<a name="readme-top"></a>

# <div align="center">🛰Blog App 🚀</div>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Blog App ](#-ruby-group-capstone---catalog-of-my-things-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Run localy](#run-localy)
    - [Run Tests ](#run-tests-)
  - [👥 Authors ](#-authors-)
    - [👤 **Habtamu Alemayehu**](#-habtamu-alemayehu)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

# 📖 Blog App <a name="about-project"></a>
A Blog app similar classic blog website. With fully functional website that show the list of posts and empower readers to interact with them by adding comments and liking posts.
The project is a repository consisting of the following files:

- Ruby files
- Rails files
- Ruby linters file

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

  <ul>
   <li><a href="https://github.com/microverseinc/curriculum-ruby/blob/main/simple-ruby/lessons/basic_syntax.md">Ruby</a></li><li><a href="https://rubyonrails.org/">Rails on Rails </a></li>
   <li><a href="https://guides.rubyonrails.org/active_record_basics.html#what-is-active-record-questionmark">ORM - Migration - 
PostgreSQL  </a></li>
</ul>


###  Key Features <a name="key-features"></a>

- [x] Display Users, posts,comments on posts, likes on posts
- [x] Create a new app. 
- [x] The project has a Postgres database set up.
- [x] Create and run the necessary migration files.
- [x] Table and column names match the [ERD](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/images/blog_app_erd.png) diagram with [developed](https://github.com/Benawi/Blog-App/assets/21217148/5b403dca-d56b-4a66-bc96-58efbf0d7eae)
        

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

In order to run this project you need:

- [Ruby](https://www.ruby-lang.org/en/) installed and running. To get more information, read the [installation instructions](https://github.com/microverseinc/curriculum-ruby/blob/main/simple-ruby/articles/ruby_installation_instructions.md).
- You should be able to use [IRB](https://en.wikipedia.org/wiki/Ruby_(programming_language)#Features).
- First of all make sure you have both `Ruby` & `Rails` installed in your machine
 (else You can install `Rails` just with this simple command  ```gem install rails```)
### Setup

Clone this repository to your desired folder:

```
  git clone https://github.com/Benawi/Blog-App.git
  cd Blog-App
```

### Install

Install project dependencies with:

```
  bundle install
```
### Run localy
 - Then go to the right folder 
```
$ cd Blog-App
```
```
$ bundle
```
and run to install npm package
```
$ npm install
```

make sure the database is up and running.
```
$ rails db:create
```
When you will add migration file then, you can add command like
```
$ rails db:migrate
```
Run this command line to add some dummy data
```
$ rails db:seed
```

 - Finaly run `rails s` and visit http://localhost:3000/  in your browser!

### Run Tests <a name="run-tests"></a>

 To run Request specs locally you need just to run this following command in your terminal :

 ```
 $ bundle exec rspec
 ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Authors <a name="authors"></a>

### 👤 **Habtamu Alemayehu**

- GitHub: [Benawi](https://github.com/Benawi)
- Linkedin: [Habtamu](https://www.linkedin.com/in/habtamualemayehu/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>
- [ ] Creating a data model.
- [ ]  Validations and Model specs.
- [ ]  Processing data in models.
- [ ]  Setup and controllers.
- [ ]  Controllers specs.
- [ ]  Views.
- [ ]  7: Forms.
- [ ] Integration specs for Views and fixing n+1 problems.
- [ ]  Add Devise.
- [ ]  Add authorization rules.
- [ ]  Add API endpoints.
- [ ]  API documentation.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, [issues](https://github.com/Benawi/Blog-App/issues), and feature requests are welcome!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give me ⭐️ If you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- I wanted to take a moment to express my sincere gratitude for the opportunity to work with you all on this project.
- Microverse, thank you for providing the structure, guidance and community to help me level up my skills as a developer. The experiential learning model has been invaluable in improving my coding abilities and collaboration skills. I appreciate the code reviews and feedback to help me write cleaner, more professional code..

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./MIT) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
