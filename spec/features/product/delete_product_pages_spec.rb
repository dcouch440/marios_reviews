require 'rails_helper'

describe "the delete recipe process" do

  it "deletes a recipe when commanded to" do

    Product.create(
      name: "Dan Jones Mic's",
      cost: '225.00',
      country_of_origin: 'USA'
    )

    visit '/products'
    click_on "Dan Jones Mic's"
    click_on 'Delete product'

    expect(page).to have_content 'Products'
    expect(page).to have_no_content "Dan Jones Mic's"

  end

end