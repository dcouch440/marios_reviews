require 'faker'

Product.destroy_all
Review.destroy_all
User.destroy_all
#  Mario adds the items to be reviewed -> users add reviews to items and can only edit or delete if it is theirs


1.times do
  # create admin once for testing ui
  @seed_admin = User.create!(
    email: 'admin@admin.com',
    password: 'asdasdasd',
    password_confirmation: 'asdasdasd',
    admin: true
  )
  @seed_user = User.create!(
    email: 'user@user.com',
    password: 'asdasdasd',
    password_confirmation: 'asdasdasd'
  )
  # seed_user creates all reviews for seed.
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
      @review = @product.reviews.create!(
        author: Faker::Name.name,
        content_body: response[score - 1],
        rating: score,
        user_id: @seed_user.id
      )
    end
  end

end