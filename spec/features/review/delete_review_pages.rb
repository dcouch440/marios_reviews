require 'rails_helper'

describe "the delete review process" do

  it "deletes a review when commanded to" do

    Bot.make

    visit '/users/sign_in'
    fill_in 'user_email', with: Bot.admin[:email]
    fill_in 'user_password', with: Bot.admin[:password]
    click_on 'Log in'


    Product.create(
      name: "Dan Jones Mic's",
      cost: '225.00',
      country_of_origin: 'USA'
    )

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