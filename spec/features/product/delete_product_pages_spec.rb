require 'rails_helper'

describe "the delete recipe process" do

  it "deletes a recipe when commanded to" do

    @product = Product.new(
      name: "Dan Jones Mic's",
      cost: '225.00',
      country_of_origin: 'USA'
    )

    @product.save

    visit '/products'
    click_on "Dan Jones Mic's"
    click_on 'Delete product'

    expect(page).to have_content 'Products'
    expect(page).to have_no_content "Dan Jones Mic's"

  end

end