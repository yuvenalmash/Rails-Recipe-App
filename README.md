<a name="readme-top"></a>

<div align="center">

  <h3><b>Rails-Recipe-App</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Rails Recipe App <a name="about-project"></a>

>The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

The app will have some common interfaces, but depending on your team size it will have a couple of extra ones. These are some of the interfaces and some wireframes for some of them:

- A login page.
- A registration page.
- A food list (with all CRUD implementation)
- A recipes list (with all CRUD implementation).
- A list of all public recipes from other users with their names and total prices.


## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>BackEnd</summary>
  <ul>
    <li><a href="https://railsguide.com/">Rails</a></li>
  </ul>
</details>

<details>
  <summary>Test</summary>
  <ul>
    <li><a href="https://rspec.com/">RSPEC</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **A login page using Devise.**
- **A registration page using Devise .**
- **A list of food.**
- **Create Food.**
- **Delete Food.**
- **List of Recipes.**
- **Create Recipes.**
- **Delete Recipes.**
- **List of Public Recipes.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Ruby on Rail Knowledge
- Object Oriented Programming(OOP) Knowledge
- Vs Code 
- Github / Git Bash
- install ruby

```sh
 sudo apt-get install ruby-full

```
- install rails
  
  ```sh
    gem install rails

  ```
- Install gems of rails

  ```sh
    bundle install
  ```

- install postgresql
  
  ```sh
    sudo apt-get install postgresql postgresql-contrib libpq-dev
  ```

### Setup

Clone this repository to your desired folder:

```sh
  git clone git@github.com:MudasirSherwani/Rails-Recipe-App.git
  cd Rails-Recipe-App
```

Prepare the database:
  - create database

```sh
  rails db:create
  rails db:migrate
```

### Usage

To run the project, execute the following command:

```sh
  rails server
```


### Run tests

To run tests, run the following command:

```sh
  Rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Yuvenal Njoroge**

- GitHub: [@yuvenalmash](https://github.com/yuvenalmash)
- Twitter: [@_Juvenal_](https://twitter.com/_Juvenal_)
- LinkedIn: [Yuvenal Njoroge](https://linkedin.com/in/yuvenal-njoroge)

👤 **Mudasir Sherwani**

- GitHub: [@Mudasir Sherwani](https://github.com/MudasirSherwani)
- Twitter: [@Mudasir Sherwani](https://twitter.com/mudasirsherwani)
- LinkedIn: [@Mudasir Sherwani](https://linkedin.com/in/mudasir-sherwani)



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **REST Full API**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/MudasirSherwani/Rails-Recipe-App/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project give me a star.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thanks [Microverse](https://www.microverse.org/) to guide me to complete this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>
 
This project is [MIT](https://github.com/MudasirSherwani/Rails-Recipe-App/blob/main/LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
