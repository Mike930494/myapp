require 'test_helper'

class BazzingaControllerTest < ActionController::TestCase
  test "should get mexico" do
    get :mexico
    assert_response :success
  end

end
