class ProductsController < ApplicationController

  before_action except: %i[ index show search ] do
    redirect_to products_path unless current_user&.admin
  end

  def index
    @products = Product.order(:name)
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

  def search
    @results = Product.where(
      "LOWER(name) LIKE ?", '%' + params[:q].downcase + '%'
    )
    render :search
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :cost, :country_of_origin)
  end

end
