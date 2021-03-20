require 'faker'

Product.destroy_all
Review.destroy_all

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