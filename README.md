#Rail FridgerApp: README

#About This App
This app idea came from pure laziness. I am too lazy to find NEW recipes that I can make with what I have.  Finding new recipes tend to take a while, and then you have to go to the store.  By creating a database of recipes, I can compare the foods I have at home with those recipes and choose something I can make at that moment.

##Technologies used:
- jQuery
  * Light usage of jQuery for certain hover changes (hover over item to change CSS in another element, toggling DIV that is hidden)
- Ruby
- Rails
- ActiveQuery
- Devise
- HTML, CSS
- Heroku

##Approach taken:
- Hoped for the best.
  * But really, coding was haphazard, I generally get ideas of what I want to make and just go
  * I didn't have any issues with this approach, but it's something I want to change in the future
  * Classmates used Trello, which I'm all about- I didn't this time because when I realized I should use it, I was at the 60% solution.
- I initially created functionality with many-to-many relationships between 'Foods and Users' and between 'Foods and Recipes'.  I wanted to be able to use the app as storage for information on recipes and food and over time added additional functionality.  After getting full CRUD functionality, I worked on making the ActiveRecord query to match recipes to the user's pantry.  Once that was done I added a favorites join table between users and recipes, and went on from there.  Once again, this was all just as I thought of it with little planning beyond having an idea of what I wanted in the long run, an approach I plan to NOT take in the future.

##Features:
- CRUD Functionality
- Login
- Favoriting Recipes
- Adding Foods to Pantry/Refrigerator
- Displaying recipes that can be made based on food owned.

##Installation Instructions:
- Go to https://fridgerapp.herokuapp.com/
- You can also have a local instance by cloning down the repo, and inside of the folder running `bundle install` and then `rails s`.  This will allow you to visit localhost at port 3000 to see the app hosted locally.

##Unimplemented things/Unsolved Problems:
- When creating a new recipe, I want to be able to add the amount of each ingredient instead of adding that in a second step
- Want it to be prettier
- Want to implement the query within SQL instead of through ActiveRecord
