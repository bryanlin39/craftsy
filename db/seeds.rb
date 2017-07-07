# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Product.destroy_all
Review.destroy_all

admin = User.create!(
  email: 'admin@craftsy.com',
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  username: 'admin',
  admin: true
)

user = User.create!(
  email: 'user@email.com',
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  username: 'user'
)

Product.create!(
  name: 'Bracelets',
  description: '2 piece set, black and white, stone bracelets',
  price: 10.00
)

4.times do |i|
  product = Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price
  )
  rand(2..4).times do |i|
    product.reviews.create!(
      user_id: user.id,
      content: Faker::Lorem.paragraph(2),
      rating: Faker::Number.between(1, 5)
    )
  end
end

# Product.create!(
#   :name => 'Bracelets',
#   :description => '2 piece set, black and white, stone bracelets',
#   :price => 10.00,
#   :picture => File.join(Rails.root, '/public/images/bracelets.jpg')
# )
#
# Product.create!(
#   :name => 'Duffel Bag',
#   :description => 'Weekender traveler bag with leather straps',
#   :price => 200.00,
#   :picture => File.join(Rails.root, '/public/images/duffel.jpg')
# )
#
# Product.create!(
#   :name => 'Bar Cart',
#   :description => 'Rustic bar cart to hold alcohol',
#   :price => 180.00,
#   :picture => File.join(Rails.root, '/public/images/bar_cart.jpg')
# )
#
# Product.create!(
#   :name => 'Teepee',
#   :description => 'Mini tent for lazy camping in the backyard and cultural misappropriation',
#   :price => 60.00,
#   :picture => File.join(Rails.root, '/public/images/teepee.jpg')
# )
