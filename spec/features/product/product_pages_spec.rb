require 'rails_helper'

context "statistics should be displayed" do

  before :each do

    @product = Product.create(
      name: 'Apple Ipad',
      cost: '129.99',
      country_of_origin: 'Usa'
    )

  end
  scenario "if a product with 2 reviews exist, one being 5 stars and the other being 1 it should display the average and number of reviews" do

    [1,5].each do |score|

      @product.reviews.create(
        author: 'Sam',
        rating: "#{score}",
        content_body: 'TEST',
      )

    end

    visit '/products'

    expect(page).to have_content 'Total Reviews: 2'
    expect(page).to have_content 'Average Review: 3.0'
    expect(page).to have_content 'Apple Ipad'

  end

  it "should display zero reviews if there are zero reviews" do

    visit '/products'
    expect(page).to have_content 'Total Reviews: 0'

  end

  it "should not display any text about average reviews if there are none" do

    visit '/products'
    expect(page).to have_no_content 'Average Review:'

  end

end