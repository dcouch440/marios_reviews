require 'rails_helper'

describe "the delete review process" do

  it "deletes a review when commanded to" do

    @product = Product.new(
      name: "Dan Jones Mic's",
      cost: '225.00',
      country_of_origin: 'USA'
    )

    @product.save

    visit '/products'

    click_on "Dan Jones Mic's"

    fill_in 'review_author', :with => 'Sam'
    fill_in 'review_rating', :with => '1'
    fill_in 'review_content_body', :with => 'Pretty bad'
    click_on 'Submit'

    click_on 'Sam'

    click_on 'Delete review'

    expect(page).to have_content 'Reviews'
    expect(page).to have_no_content 'Sam'

  end
end