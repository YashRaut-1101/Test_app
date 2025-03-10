require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  setup do
    @category = Category.create(name: "Sports")
    @admin_user = User.create(username: "johndoe", email: "johndoe@example.com",
                              password: "password", admin: true)
  end

  test "should get index" do
    get :index
    assert_response :success
    # assert_not_nil assigns(:categories)
  end

  test "should get new" do
    sign_in_as(@admin_user)
    get :new
    assert_response :success
  end

  test "should create category" do
    sign_in_as(@admin_user)
    assert_difference('Category.count', 1) do
      post :create, category: { name: "Travel" }  
    end
  
    assert_redirected_to category_path(Category.last)  # Correct redirection
  end

  test "should not create category if not admin" do
    assert_no_difference('Category.count') do
      post :create, category: { name: "Travel" }  
    end
  
    assert_redirected_to categories_path  
  end
  

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

  # test "should get edit" do
  #   get :edit, id: @category
  #   assert_response :success
  # end

  # test "should update category" do
  #   patch :update, id: @category, category: {  }
  #   assert_redirected_to category_path(assigns(:category))
  # end

  # test "should destroy category" do
  #   assert_difference('Category.count', -1) do
  #     delete :destroy, id: @category
  #   end

  #   assert_redirected_to categories_path
  # end
end
