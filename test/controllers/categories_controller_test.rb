require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @category = Category.create(name: 'Sample1', description: 'Description')
    get '/users/sign_in'
    sign_in users(:one)
    post new_user_session_url
  end
  
  test "should get index" do
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

  test "should post update" do
    patch category_url(@category), params:{category: {name:'sample updated', description:'descdesc'}}
    assert_response :redirect
  end

  test 'should delete category' do
    category = Category.find_by(name:@category.name)
    assert_difference "Category.count", -1 do
      delete category_path(category)
    end
  end
end
