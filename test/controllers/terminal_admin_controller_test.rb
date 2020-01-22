require 'test_helper'

class TerminalAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get terminal_admin_users_url
    assert_response :success
  end

end
