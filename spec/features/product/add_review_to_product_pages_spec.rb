require 'rails_helper'

describe "the add review to product process" do

  it "adds a new review to a product" do

    @product = Product.create(
      name: "Dan Jones Mic's",
      cost: '225.00',
      country_of_origin: 'USA'
    )

    visit '/products'
    click_link "Dan Jones Mic's"
    click_link 'Add an review'

    fill_in 'review_author', :with => 'Furman Shore'
    fill_in 'review_rating', :with => '1'
    fill_in 'review_content_body', :with => 'Not That Great'

    click_on 'Submit'

    expect(page).to have_content 'Furman Shore'

  end

end