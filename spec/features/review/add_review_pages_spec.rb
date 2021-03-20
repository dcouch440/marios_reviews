require 'rails_helper'

describe "the add review process" do

  before :each do

    @product = Product.new(
      name: "Dan Jones Mic's",
      cost: '225.00',
      country_of_origin: 'USA'
    )

    @product.save

    visit '/products'

    click_on "Dan Jones Mic's"
    click_on "Add an review"

  end

  it "adds a new review" do

    fill_in 'review_author', :with => 'Sam'
    fill_in 'review_rating', :with => '1'
    fill_in 'review_content_body', :with => 'Pretty bad'
    click_on 'Submit'

    expect(page).to have_content 'Sam'

  end

  it "gives an error when no review name is entered" do

    fill_in 'review_author', :with => ''
    fill_in 'review_rating', :with => ''
    fill_in 'review_content_body', :with => ''
    click_on 'Submit'

    expect(page).to have_content "Author can't be blank"
    expect(page).to have_content "Rating can't be blank"
    expect(page).to have_content "Content body can't be blank"
  end

end