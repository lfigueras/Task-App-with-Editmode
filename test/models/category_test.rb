require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
 
    test "should not save category without name" do
        category = Category.new
        assert_not category.save, "Saved the category without name"
    end

    test "must have unique name" do
        category1 = Category.new(name: "Personal", description: "My desc")
        category1.save
    
        category2 = Category.new(name: "Personal", description: "Second")
        assert_not category2.save, "Saved the category even the name is not unique"
      end 
      
       #HAPPY PATH
#   test "should save the category" do
#     category = Category.new(name: "Personal", description: "My description")
#     assert category.save
#   end
end
