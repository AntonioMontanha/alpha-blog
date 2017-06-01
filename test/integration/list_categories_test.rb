require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

 def setup
   @category = Category.create(name: "RPG")
   @category2 = Category.create(name: "programming")
 end
 
  test "should show categories listing" do
    get categories_path
    assert_template 'categories/index'
    assert_match "RPG", response.body
    assert_match "programming", response.body
  end
end