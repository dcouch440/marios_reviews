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
    response = [
      'TERRIBLE! DO NOT BUY!',
      'It was not the worst but I found it to be pretty bad.',
      'Decent but not the best.',
      'Actually pretty good, would buy again.',
      'AMAZING! Oh Joy! What A Treat!'
    ]
    score = Faker::Number.within(range: 1..5)
    @product.reviews.create!(
      author: Faker::Name.name,
      content_body: response[score - 1],
      rating: score
    )
  end
end