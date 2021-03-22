require 'rails_helper'

describe "the view product path" do

  before :each do
    @product = Product.create(
      name: "Dan Jones Mic's",
      cost: '225.00',
      country_of_origin: 'USA'
    )
  end

  it "should display the value of one star for one star rating" do

    review = @product.reviews.create(
      author: "TEST",
      rating: "1",
      content_body: 'TEST',
    )

    visit "/products/#{@product.id}/reviews/#{review.id}"

    expect(page).to have_content '⭐ ★ ★ ★ ★'

  end

  it "should display the value of five star for five star rating" do

    review = @product.reviews.create(
      author: "TEST",
      rating: "5",
      content_body: 'TEST',
    )

    visit "/products/#{@product.id}/reviews/#{review.id}"

    expect(page).to have_content '⭐ ⭐ ⭐ ⭐ ⭐'

  end

end