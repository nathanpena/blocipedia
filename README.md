
# Blocipedia Rails Application

Blocipedia is a wiki-style application built using Ruby on Rails. The app allows users to create, edit, and collaborate on wikis. It also features user roles and subscription management, showcasing skills in web development, database integration, and user authentication.

## Overview

Blocipedia is designed as a platform for creating wikis, with support for public and private wikis, user subscriptions, and role-based permissions. This project demonstrates a wide range of software engineering skills, including full-stack development, database management, and user authentication.

### How This Applies to Data Engineering & Data Analysis

- **Data Management**: The use of a relational database (PostgreSQL) for handling user data, wikis, and subscriptions highlights my ability to manage and query data efficiently, which is critical for both data engineering and analysis roles.
- **Role-Based Access Control**: The implementation of user roles and permissions is directly applicable to building secure data pipelines and ensuring access control in data engineering.
- **Scalability & Maintenance**: The clean structure and use of Ruby on Rails for back-end management highlight my ability to create scalable, maintainable systems, which are essential for large-scale data management in data engineering.

### Skills Demonstrated:

- **Ruby on Rails Development**: Full-stack development using Rails, showcasing the ability to build scalable and maintainable web applications.
- **Database Management**: Implemented database schemas and migrations to handle user accounts, roles, wikis, and collaborators.
- **User Authentication & Authorization**: Integrated Devise for user authentication and added role-based permissions to control access to certain features.
- **Payment Processing**: Added subscription management and payment processing using the Stripe API.
- **Collaboration Features**: Enabled collaboration on wikis, where users can be added as collaborators to edit private wikis.
- **Testing & Maintenance**: Structured application with maintainable code and support for future scalability, a key aspect of software engineering and data systems.

## Key Features

- **Wiki Creation and Management**: Users can create and manage both public and private wikis.
- **User Roles**: Implemented roles for users (admin, standard, and premium), with different access levels.
- **Collaborators**: Users can invite collaborators to private wikis, showcasing data-sharing and user interaction features.
- **Stripe Integration**: Integrated Stripe for managing subscription payments and ensuring secure financial transactions.
- **Database-Backed Application**: Used PostgreSQL to manage data persistence for users, wikis, and subscriptions.

## Running the Project

1. Clone the repository to your local machine.
2. Install the required dependencies by running:
   ```bash
   bundle install
   ```
3. Set up the database:
   ```bash
   rails db:create db:migrate
   ```
4. Start the Rails server:
   ```bash
   rails server
   ```
5. Visit the app at `http://localhost:3000` in your browser.

## Contact

For any questions or collaboration inquiries, feel free to reach out via [LinkedIn](https://www.linkedin.com/in/nathan-pena-995a7155/).
