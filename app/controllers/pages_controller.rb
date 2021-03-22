class PagesController < ApplicationController

  def index
    @all_products = Product.count
    @all_reviews = Review.count
  end

end
