# Craftsy Ecommerce

### Core Functionality
- [x] User model - username, email, admin
  - [x] Has many reviews
  - [x] Add/edit/delete their own reviews
- [x] Admin authorization
  - [x] Add/edit/delete products
  - [x] Delete any reviews
- [x] Review model - content, rating
  - [x] Belongs to User
  - [x] Belongs to Product
- [x] Product model - name, picture, description, price, average rating
  - [x] Belongs to Admin
- [ ] Root page - welcome and intro
- [x] Login and signup pages
- [x] View all products
- [x] View individual product
- [ ] Profile page for each user to see their reviews
- [x] Authorization - Users for reviews, Admin for products
  * Unauthenticated can see landing page and all products and individual products
- [ ] Authorization - Users can only edit/delete THEIR OWN reviews
- [x] Navbar
- [x] Devise Authentication
- [ ] Factory Girl testing
- [ ] 80% SimpleCov
- [x] Seed database
- [ ] Save username upon registration


### Further Exploration
- [ ] Custom styling
- [ ] Deploy to Heroku
- [ ] 100% SimpleCov coverage
- [ ] Welcome email upon sign up
- [ ] Favorites
- [ ] Categories
- [ ] CanCanCan for authorizing Admin accounts
- [ ] ActiveAdmin to create Admin dashboard
- [ ] Shopping cart with checkout process (receipt)
- [ ] Validations
  * Price, rating
