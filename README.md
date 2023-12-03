# Product Management App

This is a simple Rails application for managing products.
It includes basic CRUD operations, user authentication, and email notifications for product status changes also notify about launch date to users in different timezones.

## Features

- **User Management:**
  - Users can sign up, log in, and update their profiles.
  - Admin users have additional privileges for managing products.

- **Product Management:**
  - Create, Read, Update, and Delete (CRUD) operations for products.
  - Products have attributes such as name, description, launch date, price, and status.

- **Admin Privileges:**
  - Admin users can only manage product details.

- **Email Notifications:**
  - Users receive email notifications:
    - On the launch date of a new product at a specified time in their timezone.
    - When a product is marked as inactive.

## Getting Started

Follow these instructions to set up and run the project on your local machine.

### Prerequisites

- Ruby 7.1.2
- Rails 3.1.3
- sqlite3

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/product-management-app.git
2. bundle install
3. rails db:create db:migrate
4. rails db:seed
5. rails server

### Configuration
 - Configure your email settings in config/environments/development.rb for email notifications.(currently used mailcatcher)
### Usage
- Sign up for a new account or log in as an existing user(look for seeded users for admin)
- Explore the product management features.
- Check your email inbox for notifications when a new product is launched or marked as inactive.
- Currently configured mailcatcher which is used for development.
  - gem install mailcatcher
  - mailcatcher
  - Go to http://127.0.0.1:1080/ (check in this URL for mail deliveries)
  - Send mail through smtp://127.0.0.1:1025
