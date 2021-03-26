require 'rails_helper'

describe "the edit product process" do

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
    click_on 'Edit product name'

  end

  it "can edit a product" do

    fill_in 'product_name', :with => 'Tooth Pics'
    click_on 'Submit'

    expect(page).to have_content 'Tooth Pics'

  end

  it "gives an error when no product name is entered" do

    fill_in 'product_name', :with => ''
    fill_in 'product_cost', :with => ''
    fill_in 'product_country_of_origin', :with => ''

    click_on 'Submit'

    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Cost can't be blank"
    expect(page).to have_content "Country of origin can't be blank"
    expect(page).to have_content "Name can't be blank"

  end

end