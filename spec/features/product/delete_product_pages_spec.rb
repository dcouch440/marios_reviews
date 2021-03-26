require 'rails_helper'

describe "admin delete product process" do

  it "deletes a product when commanded to" do

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
    click_on 'Delete product'

    expect(page).to have_content 'Products'
    expect(page).to have_no_content "Dan Jones Mic's"

  end

end