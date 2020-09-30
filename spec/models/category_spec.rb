require 'rails_helper'

RSpec.describe Category, type: :model do
  
  it "is valid without a parent" do
    category = Category.create(name: "Categoria Uno")

    expect(category).to be_valid
 end

 it "destroy the parent... destroy the children" do
   cat_parent = Category.create(name: "Categoria Uno")
   cat_child = Category.create(name: "Categoria hijo", parent: cat_parent)

   cat_parent.destroy

   assert_nil Category.find_by_id(cat_child.id)
 end

end
