require 'rails_helper'

describe Product do

  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should
    validate_numericality_of(:cost)
    .is_greater_than_or_equal_to(0)
  }

    it "titleizes the name of an product" do

      product = Product.create({
        name: "soup apples",
        cost: 5,
        country_of_origin: 'Spain'
      })

      expect(product.name()).to(eq("Soup Apples"))

    end

    it "averages the reviews from the given product instance" do

      Bot.make

      @product = Product.create(
        name: "soup apples",
        cost: 5,
        country_of_origin: 'Spain'
      )

      [1,2,5].each do |score|

        @product.reviews.create!(
          author: 'Sam',
          rating: "#{score}",
          content_body: 'TEST',
          user_id: Bot.user[:id]
        )

      end

      expect(@product.calculate_average).to eq 2.7

    end

end