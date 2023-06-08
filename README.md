# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

### Homepage
!["View homepage"](https://github.com/rebecca-romeo/jungle-rails/blob/master/public/images/home.png)

### Products
View all products on the homepage
!["View all products on homepage"](https://github.com/rebecca-romeo/jungle-rails/blob/master/public/images/products.png)

### Product details
View an individual product and it's details
!["View individual product"](https://github.com/rebecca-romeo/jungle-rails/blob/master/public/images/item.png)

### Shopping cart
View your shopping cart
!["View shopping cart"](https://github.com/rebecca-romeo/jungle-rails/blob/master/public/images/cart.png)

### Payment
Enter payment details
!["View payment modal"](https://github.com/rebecca-romeo/jungle-rails/blob/master/public/images/payment.png)

### Order details
View your order details and confirmation
!["View purchase details"](https://github.com/rebecca-romeo/jungle-rails/blob/master/public/images/order_details.png)



## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
