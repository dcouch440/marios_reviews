require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_numericality_of(:cost).is_greater_than_or_equal_to(0) }
  describe Product do
    it("titleizes the name of an product") do
      product = Product.create({name: "soup apples", cost: 5, coo: 'Spain'})
      expect(product.name()).to(eq("Soup Apples"))
    end
  end

end