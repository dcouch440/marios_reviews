require 'rails_helper'

describe "the add recipe process" do

  before :each do

    visit '/'
    click_link 'Get Started.. Go To Products'
    click_link 'Add One Here'

  end

  it "adds a new product" do

    fill_in 'product_name', :with => 'Apple Ipad'
    fill_in 'product_cost', :with => '129.00'
    fill_in 'product_country_of_origin', :with => 'Usa'
    click_on 'Submit'

    expect(page).to have_content 'Apple Ipad'

  end

  it "gives an error when no product name, cost, country of origin, is entered" do

    fill_in 'product_name', :with => ''
    fill_in 'product_cost', :with => ''
    fill_in 'product_country_of_origin', :with => ''

    click_on 'Submit'

    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Cost can't be blank"
    expect(page).to have_content "Country of origin can't be blank"

  end

end