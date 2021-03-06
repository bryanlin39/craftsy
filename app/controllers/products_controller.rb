class ProductsController < ApplicationController
  before_action :except => [:index, :show] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    if @product = Product.create!(product_params)
      redirect_to products_path, notice: 'Product successfully added'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product), notice: 'Product successfully updated'
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.reviews.each do |review|
      review.destroy
    end
    @product.destroy
    redirect_to products_path, notice: 'Product successfully removed'
  end

private

  def product_params
    params.require(:product).permit(:name, :description, :price, :picture)
  end

end
