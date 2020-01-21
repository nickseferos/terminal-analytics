require 'test_helper'

class GangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gang = gangs(:one)
  end

  test "should get index" do
    get gangs_url
    assert_response :success
  end

  test "should get new" do
    get new_gang_url
    assert_response :success
  end

  test "should create gang" do
    assert_difference('Gang.count') do
      post gangs_url, params: { gang: { flexed: @gang.flexed, note: @gang.note, shift_id: @gang.shift_id, top_pick: @gang.top_pick, utr: @gang.utr } }
    end

    assert_redirected_to gang_url(Gang.last)
  end

  test "should show gang" do
    get gang_url(@gang)
    assert_response :success
  end

  test "should get edit" do
    get edit_gang_url(@gang)
    assert_response :success
  end

  test "should update gang" do
    patch gang_url(@gang), params: { gang: { flexed: @gang.flexed, note: @gang.note, shift_id: @gang.shift_id, top_pick: @gang.top_pick, utr: @gang.utr } }
    assert_redirected_to gang_url(@gang)
  end

  test "should destroy gang" do
    assert_difference('Gang.count', -1) do
      delete gang_url(@gang)
    end

    assert_redirected_to gangs_url
  end
end
