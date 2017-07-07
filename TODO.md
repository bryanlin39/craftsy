# Craftsy Ecommerce

### Core Functionality
- [x] User model - username, email, admin
  - [ ] Has many reviews
  - [ ] Add/edit/delete their own reviews
- [ ] Admin authorization
  - [x] Add/edit/delete products
  - [ ] Delete any reviews
- [ ] Review model - content, rating
  - [ ] Belongs to User
- [x] Product model - name, picture, description, price, average rating
  - [x] Belongs to Admin
- [ ] Root page - welcome and intro
- [x] Login and signup pages
- [ ] View all products
- [ ] View individual product
- [ ] Authentication - Users for reviews, Admin for products
  * Unauthenticated can see landing page and all products and individual products
- [x] Navbar
- [x] Devise Authentication
- [ ] Factory Girl testing
- [ ] 80% SimpleCov
- [x] Seed database


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
