require 'rails_helper'

describe 'CRUD for reviews' do

  before(:each) do
    Product.destroy_all
    Review.destroy_all
    @user = FactoryGirl.create(:user)
    @product = FactoryGirl.create(:product)
    @review = FactoryGirl.create(:review, :user_id => @user.id, :product_id => @product.id)
    login_as(@user, :scope => :user)
  end

  it 'adds a new review' do
    visit product_path(@product)
    click_on 'Add a Review'
    fill_in 'Content', :with => 'This product is great!'
    fill_in 'Rating', :with => 5
    click_button 'Create Review'
    expect(page).to have_content 'This product is great!'
  end

  it 'updates an existing review' do
    visit product_path(@product)
    click_on 'Edit'
    fill_in 'Content', :with => 'This product is okay.'
    click_button 'Update Review'
    expect(page).to have_content 'This product is okay.'
  end

end
