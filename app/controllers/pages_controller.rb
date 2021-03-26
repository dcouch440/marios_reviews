class PagesController < ApplicationController

  def index
    @all_products = Product.count
    @all_reviews = Review.count
    @all_users = User.count
  end

end
