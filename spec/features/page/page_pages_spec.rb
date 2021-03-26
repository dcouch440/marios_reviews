require 'rails_helper'

describe "the home page path" do

  scenario "the user enters the website from the home page" do

    visit '/'
    expect(page).to have_content 'Products'

  end

end

describe "home page view statistics" do

  scenario "the user should see the total reviews and products from the front page" do
    Bot.make

    (1..10).each do |interval|

      product = Product.create(
        name: "TEST #{interval}",
        cost: '225.00',
        country_of_origin: 'USA'
      )

      (1..10).each do |interval|

        product.reviews.create(
          author: "TEST #{interval}",
          rating: "1",
          content_body: 'TEST',
          user_id: Bot.user[:id]
        )

      end

    end

    visit '/'

    expect(page).to have_content 'Current Products Total: 10'
    expect(page).to have_content 'Current Reviews Total: 100'

  end

end