require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  def setup
    get :index
  end

  test 'should get index' do
    assert_response :success
    assert_response 200
  end

  test 'results should have three columns' do
    assert_select 'th', 3
  end

  test 'page should display chocolate initially' do
    assert_select 'h2', 'Searching for - chocolate'
  end

  test 'page should display bacon on subsequent search' do
    get(:index, {'search' => 'bacon'})
    assert_select 'h2', 'Searching for - bacon'
  end

  test 'page results should be zebra-striped' do
    assert_select 'tr.even', 15
    assert_select 'tr.odd', 15
  end

  test 'page gives credit to data source' do
    assert_select 'p', 'Powered By Food2Fork.com'
  end

end
