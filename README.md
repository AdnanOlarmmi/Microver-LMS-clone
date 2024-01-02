# 📗 Table of Contents

- [📖 About the Project](#[project])
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [📹 Video Description](#video-description)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Available Scripts](#available-scripts)
- [👥 Author](#author)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgments)
- [📝 License](#license)

# Microverse LMS clone

**A Learning Management System in short LMS** is a software application for the administration, documentation, tracking, reporting, automation, and delivery of educational courses, training programs, materials, or learning and development programs. The learning management system concept emerged directly from e-learning.

It's the first API endpoint of a learning management system. This API is compliant with the JSON: API specification and uses JWT for authentication.
The API has endpoints for signing in and signing up, listing courses, enrolling in a course, and listing all courses that the current user is enrolled in.
Additionally, the application periodically fetches courses from a remote API and stores them locally.

The API is JSONAPI-compliant.
The API supports authentication with JWT.
Baked solutions like Devise::JWT or Knock weren't used; It was implemented at a lower level using bcrypt.


## Built With

### Tech Stack

<ul>
  <li><a href="https://www.ruby-lang.org/en/news/2022/11/24/ruby-3-1-3-released/">Ruby 3.1</a></li>
  <li><a href="https://rubyonrails.org/">Ruby on Rails 7</a></li>
  <li><a href="https://www.postgresql.org/">PostgreSQL 15</a></li>
</ul>

### Key Features

- User registration system.
- Course registration.
- The API has endpoints to:
  - Create a new user account with the given email and password.
  - Authenticate a user with the given email and password and return a JWT token.
  - Return a list of all courses (including course name and description).
  - Enroll the current user in a course with a given course ID.
  - Return a list of all courses that the current user is enrolled in (including the names of the courses the user is enrolled in and the respective enrollment dates).
  - A user may enroll in multiple courses simultaneously, and a course may have many enrolled students at the same time.
  - Finally, the application also has a Sidekiq worker that periodically fetches data from a remote API and updates the local database with new courses. It was scheduled to run periodically.

### Video Description

- [Watch a video description given by me](https://www.loom.com/share/fd8f9db88d464f14953a85f2c58672bc), To be continued [here](https://www.loom.com/share/d86e7d1821c344cd8d561411c49b32db)

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

- <a href="https://www.ruby-lang.org/en/news/2022/11/24/ruby-3-1-3-released/">Ruby</a>
- <a href="https://rubyonrails.org/">Ruby on Rails</a>
- <a href="https://www.postgresql.org/">PostgreSQL</a>
- any code editor

### Setup

To set up the project follow the steps:

1. Download the zip folder

2. Unzip it with any software of your choice such as WinRAR.

3. Setup the app's database
   ```
   rails db:setup
   ```
4. To input existing local data run.
   ```
   rails db:seed
   ```
5. To run sidekiq for sequential calling of data into the local database run
   ```
   sidekiq
   ```

### Available Scripts

In the project directory, you can run:

- ```
  rails server
  ```

  Runs the app server

- ```
  rubocop
  ```
  Launches the test runner.

## Author

👤 **Is-haq, Adnan Olamilekan**

- GitHub: [@AdnanOlarmmi](https://github.com/adnanolarmmi)
- Twitter: [@AdnanIshaqOla](https://twitter.com/AdnanIshaqOla)
- LinkedIn: [Adnan (Olamilekan) Is-haq](https://linkedin.com/in/adnan-is-haq-olamilekan)

## Future Feature

- Implement user engagement features (likes, comments, and ratings) for each course list.
- Enable users to add more personal information.

## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to [email me](adnanishaqola@gmail.com) for suggestions, contributions, issues and features.

## Show your support <a name="support"></a>

If you like this project give it a star!

## Acknowledgments

- Microverse

## License

This project is [MIT](./LICENSE) licensed.

