# 📗 Table of Contents

- [📖 About the Project](#[project])
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [📹 Video Description](#video-description)
    - [🚀 Live Demo](#live-demo)
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


# Microverse LMS for Internship


**An Learning Management System in short LMS** is a software application for the administration, documentation, tracking, reporting, automation, and delivery of educational courses, training programs, materials or learning and development programs. The learning management system concept emerged directly from e-Learning.

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

### Video Description
- [Watch a video description given by me]()

## Getting Started 

To get a local copy up and running follow these simple steps.

### Prerequisites

  - <a href="https://www.ruby-lang.org/en/news/2022/11/24/ruby-3-1-3-released/">Ruby</a>
  - <a href="https://rubyonrails.org/">Ruby on Rails</a>
  - <a href="https://www.postgresql.org/">PostgreSQL</a>
  - any code editor

### Setup

To setup the project follow the steps:

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

- Implement user engagement features (likes, comments and ratings) for each course list.
- Enable user to add more personal information.

## Contributing 

Contributions, issues, and feature requests are welcome!

Feel free to [mail me](adnanishaqola@gmail.com) for suggestions, contributions, issues and features.

## Show your support <a name="support"></a>

If you like this project give it a star!

## Acknowledgments 

- Microverse 

## License 

This project is [MIT](./LICENSE) licensed.
