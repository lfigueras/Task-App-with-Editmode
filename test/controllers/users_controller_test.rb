require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  test "should get new" do
    get new_user_session_url
    assert_response :success
  end
    
 
end