require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_response 200
  end

end
