require 'rails_helper'

describe "the admin edit review process" do

  before :each do

    Bot.make

    visit '/users/sign_in'
    fill_in 'user_email', with: 'admin@admin.com'
    fill_in 'user_password', with: 'asdasdasd'
    click_on 'Log in'

    Product.create(
      name: "Dan Jones Mic's",
      cost: '225.00',
      country_of_origin: 'USA'
    )

    visit '/products'

    click_on "Dan Jones Mic's"
    click_on "Add an review"

    fill_in 'review_author', :with => 'Sam'
    fill_in 'review_rating', :with => '1'
    fill_in 'review_content_body', :with => 'Pretty bad'
    click_on 'Submit'

  end

  it "can edit a review" do

    click_on 'Sam'
    click_on 'Edit review'

    fill_in 'review_author', :with => 'Dan'
    fill_in 'review_rating', :with => '5'
    fill_in 'review_content_body', :with => 'Pretty Good'
    click_on 'Submit'

    expect(page).to have_content 'Dan'

  end

end