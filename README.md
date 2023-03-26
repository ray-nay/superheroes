# README
# Project Title
Phase 4 Week 2 Code Challenge: Superheroes

### Author : Name Date
Catherine Renee Mumbi 27/03/2023


## Project Description  
This project works with a superheroes domain. It has three models: Hero, Power and HeroPower. 

- A `Hero` has many `Power`s through `HeroPower`

- A `Power` has many `Hero`s through `HeroPower`

- A `HeroPower` belongs to a `Hero` and belongs to a `Power`



## Project Setup


Fork and clone this repository to your local machine

Navigate to the project directory in your terminal and open the project with the text editor of your choice.

Open the terminal and run `bundle install` to install the app's dependencies.

The app has 3 models structured in the files: hero.rb, hero_power.rb and power.rb which explain the relationships, validations and associations within the models.

It also has 3 corresponding controllers for the above models, located in the controllers folder which have the methods for the required CRUD methods.

The routes to make the CRUD requests are in the config/routes.rb file.

To test out the functionalities; run the server through `rails s` command on your terminal. 

1. To test out the routes for heroes:
Navigate to "http://127.0.0.1:3000/heroes" and "http://127.0.0.1:3000/heroes/1" for the corresponding id as well as the powers. 

Try out a higher id such as "http://127.0.0.1:3000/heroes/15" to check that the error responses are 
working. 



2. To test out the routes for powers:

Navigate to "http://127.0.0.1:3000/powers" and "http://127.0.0.1:3000/powers/1" for the corresponding id as well as the powers. 

Try out a higher id such as "http://127.0.0.1:3000/powers/15" to check that the error responses are 
working. 

For patch, open your postman and put the url with the id you want to patch for example "http://127.0.0.1:3000/powers/1"

Add this as the body:
{

  "description": "Updated description"

}

Press send and you will get a 200 response code. To check whether it has picked the update, navigate to "http://127.0.0.1:3000/powers/1" and you will see that it description field now reads "Updated description" instead of "Gives the wielder ability to fly on a broom stick"

If the Power is not updated successfully (does not pass validations),

return the following JSON data, along with the appropriate HTTP status code:

```

{

  "errors": ["validation errors"]

}




3. To test out the routes for hero_powers:
Open Postman and make a post request with the body data structured as follows:
{

  "strength": "Average",

  "power_id": 1,

  "hero_id": 3

}
Then navigate to "http://127.0.0.1:3000/hero_powers" to confirm that it has been added.

You will notice a new id has been created.




 
## Technologies Used
1.Rails
2.Active Record
3.Bundler 
4.Git
5.Postman


*****

## Contact Information
* 1723renee@gmail.com
*****