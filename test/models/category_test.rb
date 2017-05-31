require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  def setup
    @category = Category.new(name: "sports")
  end
  
  test "category should be valid" do
    assert @category.valid?
  end
  
  test "name should be present" do
    @category.name = " "
    assert_not @category.valid?
  end
  
  test "name should be unique" do
    @category.save
    category2 = Category.new(name: "Sports")  
    assert_not category2.valid?
  end
  
  test "name should not be too long" do
    @category.name = "It is a very long name for my test and it is not valid"
    assert_not @category.valid?
  end
  
  test "name should not be too small" do
    @category.name = "sm"
    assert_not @category.valid?
  end
end