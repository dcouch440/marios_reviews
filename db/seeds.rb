require 'faker'

Product.destroy_all
Review.destroy_all

# Faker::Games::WorldOfWarcraft.quote
# Faker::Number.within(range: 1..5)

# Faker::Name.name

# Faker::Device.build_number #=> "5"

# Faker::Device.manufacturer #=> "Apple"

# Faker::Device.model_name #=> "iPhone 4"

# Faker::Commerce.price(range: 0..25.0)
# Faker::Commerce.product_name

# Faker::Lorem.sentence(word_count: 170, random_words_to_add:80)

# Faker::Address.country

50.times do
  @product = Product.create!(
    name: Faker::Commerce.product_name,
    cost: Faker::Commerce.price(range: 0..300.0),
    country_of_origin: Faker::Address.country
  )
  5.times do
    @product.reviews.create!(
      author: Faker::Name.name,
      content_body: Faker::Lorem.sentence(word_count: 10, random_words_to_add:10),
      rating: Faker::Number.within(range: 1..5)
    )
  end
end