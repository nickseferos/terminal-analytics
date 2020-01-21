require 'test_helper'

class PortCallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @port_call = port_calls(:one)
  end

  test "should get index" do
    get port_calls_url
    assert_response :success
  end

  test "should get new" do
    get new_port_call_url
    assert_response :success
  end

  test "should create port_call" do
    assert_difference('PortCall.count') do
      post port_calls_url, params: { port_call: { atd: @port_call.atd, eta: @port_call.eta, first_container: @port_call.first_container, first_line: @port_call.first_line, first_reefer: @port_call.first_reefer, last_contaienr: @port_call.last_contaienr, last_line: @port_call.last_line, last_reefer: @port_call.last_reefer, terminal_id: @port_call.terminal_id, total_discharge: @port_call.total_discharge, total_load: @port_call.total_load, total_rehandle: @port_call.total_rehandle, voyage_id: @port_call.voyage_id } }
    end

    assert_redirected_to port_call_url(PortCall.last)
  end

  test "should show port_call" do
    get port_call_url(@port_call)
    assert_response :success
  end

  test "should get edit" do
    get edit_port_call_url(@port_call)
    assert_response :success
  end

  test "should update port_call" do
    patch port_call_url(@port_call), params: { port_call: { atd: @port_call.atd, eta: @port_call.eta, first_container: @port_call.first_container, first_line: @port_call.first_line, first_reefer: @port_call.first_reefer, last_contaienr: @port_call.last_contaienr, last_line: @port_call.last_line, last_reefer: @port_call.last_reefer, terminal_id: @port_call.terminal_id, total_discharge: @port_call.total_discharge, total_load: @port_call.total_load, total_rehandle: @port_call.total_rehandle, voyage_id: @port_call.voyage_id } }
    assert_redirected_to port_call_url(@port_call)
  end

  test "should destroy port_call" do
    assert_difference('PortCall.count', -1) do
      delete port_call_url(@port_call)
    end

    assert_redirected_to port_calls_url
  end
end
