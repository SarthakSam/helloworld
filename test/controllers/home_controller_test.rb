require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get mainPage" do
    get :mainPage
    assert_response :success
  end

end
