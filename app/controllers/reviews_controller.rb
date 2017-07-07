class ReviewsController < ApplicationController
  before_action :find_product
  before_action do
    redirect_to new_user_session_path unless current_user
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @review = @product.reviews.new(content: review_params[:content], rating: review_params[:rating], user_id: params[:user_id])
    if @review.save
      redirect_to product_path(@product), notice: 'Successfully added review'
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to product_path(@product), notice: 'Successfully edited review'
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@product), notice: 'Successfully deleted review'
  end

private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id)
  end

  def find_product
    @product = Product.find(params[:product_id])
  end

end
