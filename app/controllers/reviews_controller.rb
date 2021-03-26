class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])

    @review = @product.reviews.new

    render :new
  end

  def create
    @product = Product.find(params[:product_id])

    @review = @product.reviews.new(review_params)
    @review.user_id = current_user.id

    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :show
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :edit
  end

  def update
    @review = Review.find(params[:id])

    if @review.user.id !== user.id

      if @review.update(review_params)
        redirect_to product_path(@review.product)
      else
        @product = Product.find(params[:product_id])
        render :edit
      end

    else

      redirect_to products_path
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.user_id == current_user&.id
      @review.destroy
    end
    redirect_to product_path(@review.product)
  end

  private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating, :user_id)
  end

end
