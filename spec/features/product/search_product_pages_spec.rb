require 'rails_helper'

describe "the search product process" do

  it "finds all results after searching for them" do

    @products = [
      'Awesome Wool Bag',
      'Awesome Cotton Plat',
      'Awesome Concrete Pants',
      'Awesome Copper Clock'
    ]

    @products.each { |product|

      Product.create(
        name: product,
        cost: '100.00',
        country_of_origin: 'USA',
      )

    }

    visit '/products'
    fill_in 'product_search', with: @product

    @products.each { |product|

      visit '/products'
      fill_in 'product_search', with: product

      expect(page).to have_content product

    }

  end

end