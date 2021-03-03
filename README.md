# Find-My-Car-API
> A simple RESTful JSON API with JWT authenication for Find-My-Car mobile app. This project is the backend part of final capstone project for Microverse program. 

<br>The aim of the project is to build our own backend API using all the best practices we learned using rails.<br>
The project specifications can be seen in [Click here](https://www.notion.so/Final-Capstone-Project-Find-Your-House-9a424802e7dc48eb8ef40e2ac09397d1#f6146dd819194da486ce5d60e69b3a93)

[Live Demo Link](https://sami-api-v1.herokuapp.com/cars)

## Content

* [Quick Start](#quick-start)
* [Dependencies](#dependencies)
* [Author](#author)

## API rules.

* How to use this API.

## Quick Start

# Current API Endpoints

The API will expose the following RESTful endpoints.
### BaseUrl: {Host-URL}/api/v1

| Endpoint                | Functionality                |
|-------------------------|------------------------------|
| POST /user              | Signup                       |
| POST /login             | Signin                       |
| GET /cars               | List all cars                |
| POST /cars              | Add a new car                |
| DELETE /cars/:id        | Delete a car                 |
| PUT /cars/:id           | Update a car                 |
| DELETE /user/:id        | Delete a user                |
| POST /favs              | Add favourite car            |
| GET /favs               | Get user favourite cars      |

#### Get a local copy with:<br>

```js
git clone https://github.com/Samitti/Rails-API-v1.git
```

Or just hit (Download Zip) on green button (Clone or Download) on top of this page.

#### Run on terminal/prompt:

* Open the terminal and make sure the path is inside the cars-api folder.

* Run the code below to install telegram-bot-ruby from the Gemfile and start the bot.

```js
bundle install

rails db:create

rails db:migrate


rails s

```

* Use the browser to check the required JSON output

### Dependencies

Ruby 2.6.6
Rails 6.1.2.1

## Author

👤 **Samuel Teweldebrhan Ghebremeskel**

- Github: [@githubhandle](https://github.com/Samitti)
- Twitter: [@twitterhandle](https://twitter.com/Samuel63734232)
- Linkedin: [linkedin](https://www.linkedin.com/in/samuel-ghebremeskel-29685811a/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Samitti/Rails-API-v1.git/issues).

## Show your support

Give a ⭐️ if you like this project!