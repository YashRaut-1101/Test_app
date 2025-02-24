require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "Sports") 
  end

  test "should show categories listing" do
    get categories_path
    assert_response :success
    assert_match "Sports", response.body

    
    get category_path(@category) 
    assert_response :success
    assert_match "Sports", response.body
  end
end

