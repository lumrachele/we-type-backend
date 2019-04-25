## WeType: The Backend

This Rails application is the backend for WeType. It provides access to the necessary API endpoints and communicates with the PostgreSQL Database. It also demonstrates use of a channel to establish an action cable connection via websockets between players of the same game. <a href=https://vimeo.com/332499170>Demo Video</a>

Frontend: [Weegle Frontend Repository](https://github.com/lumrachele/we-type-front-end)

<h2>Contents</h2>

* [Essential Gems](#essential-gems-&-dependencies)

* [Installation](#installation)

* [Models](#models)

* [Future Development](#future-development)



# <h2>Essential Gems & Dependencies</h2>

This app uses Ruby version 2.5.3. This Rails application was created using ```rails new we_type --api --database=postgresql```, thus allowing the app to be created as an API and directing it to use postgreSQL databases. Gems 'rack-cors' and 'active_model_serializers' are used for Cross-Origin Resource Sharing, allowing for cross-origin AJAX. This application fetches from the ["iCanHazDadJoke" API](https://icanhazdadjoke.com/api) in the ```seeds.rb``` file.

# <h2>Installation</h2>

To get started with this app, simply fork and clone this repository, as well as the [frontend repository](https://github.com/lumrachele/we-type-front-end). Set up the front end as per the instructions in that repository. Remember to ```bundle install``` and run ```rails db:create && rails db:migrate && rails db:seed``` to create and initialize the database. Double check that you have PostgreSQL running on your computer. To run, enter the command ```rails s``` in your terminal and navigate to ```http://localhost:3000``` or whatever port number you would like to indicate, as long as it differs from the port of the frontend.

# <h2>Models</h2>

There are three models used for this application:

<h3>Game</h3>



Key Controller Methods: 

<h3>Quote</h3>



Key Controller Methods: 

<h3>Score</h3>



Key Controller Methods: 



# <h2>Future Development</h2>
- customize serializers such that they provide only the necessary information

At this moment, this application does not allow for open source contributions.
