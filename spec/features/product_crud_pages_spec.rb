require 'rails_helper'

describe 'CRUD for products' do

  before(:each) do
    Product.destroy_all
    @user = FactoryGirl.create(:user, :admin => true)
    @product = FactoryGirl.create(:product)
    login_as(@user, :scope => :user)
  end

  it 'adds a new product' do
    visit new_product_path
    fill_in 'Name', :with => 'Chair'
    fill_in 'Description', :with => 'Something to sit on'
    fill_in 'Price', :with => 20.00
    click_button 'Create Product'
    expect(page).to have_content 'Chair'
  end

  it 'updates an existing product' do
    visit product_path(@product)
    click_on 'Edit product details'
    fill_in 'Name', :with => 'Product Edit'
    click_button 'Update Product'
    expect(page).to have_content 'Product Edit'
  end

end
