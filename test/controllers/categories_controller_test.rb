require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = Category.create(name: 'Sample1', description: 'Description')
  end
  
  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should post create category" do
    post categories_url, params:{category:{name: 'Sample', description: 'This is desc'} }
    assert_response :redirect
  end

  test "should get edit" do
    get edit_category_url(@category)
    assert_response :success
  end

  test "should get show" do
    get category_url(@category)
    assert_response :success
  end
  test "should get update" do
    get category_url(@category)
    assert_response :success
  end

  test "should get destroy" do
    get  category_url(@category)
    assert_response :success
  end
end
