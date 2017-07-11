require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path					#changed from default --> users_new_url
    assert_response :success
  end

end
