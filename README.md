# Gym Fitness API

The **Gym Fitness API** is the backend for the **BUILT TO CONQUER** platform, built with Ruby on Rails and PostgreSQL. It powers user management, workout schedules, memberships, and other gym-related functionalities.

## Prerequisites

To run this application, ensure the following are installed on your system:  
- Ruby 3.0+  
- Rails 7.0+  
- PostgreSQL  
- Node.js and Yarn (optional for asset management)  

## Setup Instructions

1. Clone the repository:  
   `git clone https://github.com/yourusername/gym-fitness-api.git`  
   `cd gym-fitness-api`  

2. Install dependencies:  
   `bundle install`  

3. Configure the database by editing the `config/database.yml` file to match your PostgreSQL setup.  

4. Set up the database:  
   `rails db:create`  
   `rails db:migrate`  
   `rails db:seed`  

5. Start the Rails server:  
   `rails server`  

6. Access the API locally at `http://localhost:3000`.  

## Endpoints Overview

- **Users**  
  `GET /users` - Fetch all users  
  `POST /users` - Create a new user  

- **Workouts**  
  `GET /exercises` - Fetch all exercises  
  `POST /exerciss` - Create a new workout  

- **Memberships**  
  `GET /routines` - Fetch all routines  
  `POST /routines` - Create a new routines  

## Deployment Instructions

1. Set up a production PostgreSQL database and update the `config/database.yml` file with production settings.  
2. Precompile assets (if applicable):  
   `rails assets:precompile`  
3. Migrate the database in production:  
   `rails db:migrate`  
4. Start the Rails server in production mode:  
   `rails server -e production`  

## Notes

- Use a `.env` file to manage environment variables for secrets like API keys, database credentials, and secret tokens.  
- Follow Rails best practices for a scalable and maintainable application.  

Enjoy building with the **Gym Fitness API**!
