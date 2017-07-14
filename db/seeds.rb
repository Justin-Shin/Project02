# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Food.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

butter = Food.create(name:"Butter",fat:12,protein:0.1,carbohydrates:0,calories:102,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"tablespoon", img_url:"http://i.imgur.com/gU97WmF.jpg")
flour = Food.create(name:"Flour",fat:1,protein:4,carbohydrates:23,calories:110,vegetarian:true,gluten_free:false,serving_size:1,unit_of_measure:"cup", img_url:"http://i.imgur.com/CA219VQ.jpg")
w_sugar = Food.create(name:"Sugar - White",fat:1,protein:1,carbohydrates:200,calories:774,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"cup", img_url:"http://i.imgur.com/1ob0YPE.jpg")
b_sugar = Food.create(name:"Sugar - Brown",fat:1,protein:1,carbohydrates:216,calories:836,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"cup", img_url:"http://i.imgur.com/MzfHCIw.jpg")
vanilla = Food.create(name:"Vanilla Extract",fat:1,protein:1,carbohydrates:1.6,calories:38,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"tablespoon", img_url:"http://i.imgur.com/SbEDa7o.jpg")
egg = Food.create(name:"Egg",fat:5,protein:6,carbohydrates:0.6,calories:78,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"", img_url:"http://i.imgur.com/Q5sOivG.jpg")
yolk = Food.create(name:"Egg: Yolk",fat:4.5,protein:2.7,carbohydrates:0.6,calories:55,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"", img_url:"http://i.imgur.com/ksIK0v7.jpg")
white = Food.create(name:"Egg: White",fat:0.5,protein:3.3,carbohydrates:1,calories:23,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"", img_url:"http://i.imgur.com/V6UQBR1.jpg")
b_powder = Food.create(name:"Baking Powder",fat:0,protein:0,carbohydrates:1.3,calories:2,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"teaspoon", img_url:"http://i.imgur.com/Ih7Y1yf.jpg")
b_soda = Food.create(name:"Baking Soda",fat:1,protein:1,carbohydrates:1,calories:1,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"teaspoon", img_url:"http://i.imgur.com/3NIEKr1.jpg")
salt = Food.create(name:"Salt",fat:1,protein:1,carbohydrates:1,calories:1,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"teaspoon", img_url:"http://i.imgur.com/b4qH7k7.jpg")
chocolate_chips = Food.create(name:"Chocolate Chips",fat:1,protein:1,carbohydrates:1,calories:1,vegetarian:true,gluten_free:true,serving_size:1,unit_of_measure:"teaspoon", img_url:"http://i.imgur.com/mZe0tBl.jpg")

#browned butter, roux, egg fry, toffee

choco_cookies = Recipe.create(name:"Chocolate Chip Cookies",instructions: "Do the stuff for the cookies.",servings:24,total_calories:1,total_fat:1,total_protein:1,total_carbohydrates:1,vegetarian:true,gluten_free:false, img_url:"http://i.imgur.com/o3Gzfa9.jpg")
browned_butter = Recipe.create(name:"Browned Butter",instructions:"Brown it dude",servings:16,total_calories:1,total_fat:1,total_protein:1,total_carbohydrates:1,vegetarian:true,gluten_free:true, img_url:"http://i.imgur.com/IsxBYZu.jpg")
roux = Recipe.create(name:"Roux",instructions:"Don't burn it man",servings:1,total_calories:1,total_fat:1,total_protein:1,total_carbohydrates:1,vegetarian:true,gluten_free:false, img_url:"http://i.imgur.com/QHYHZTb.jpg")
egg_fry = Recipe.create(name:"Fried Egg",instructions:"put it on the pan, yo",servings:1,total_calories:1,total_fat:1,total_protein:1,total_carbohydrates:1,vegetarian:true,gluten_free:true, img_url:"http://i.imgur.com/ckfaaXU.jpg")
toffee = Recipe.create(name:"Toffee",instructions:"HOLY SHIT ITS SO HOT",servings:1,total_calories:1,total_fat:1,total_protein:1,total_carbohydrates:1,vegetarian:true,gluten_free:true, img_url:"http://i.imgur.com/UDyFdxb.jpg")
pie_crust = Recipe.create(name:"Pie Crust",instructions:"just do it",servings:1,total_calories:1,total_fat:1,total_protein:1,total_carbohydrates:1,vegetarian:true,gluten_free:false, img_url:"http://3.bp.blogspot.com/_7GInlfrGRRA/TODQ9tQ7SpI/AAAAAAAAAmk/zRUVxfNaFpc/s1600/Apple+Pie+2010+157.jpg")



# I thought it was a bug at first that caused 'apple' to display as a unit. Use logical and sensible placeholders instead: "apples to apples" as they say.
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:choco_cookies,food:butter)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:choco_cookies,food:flour)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:choco_cookies,food:w_sugar)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:choco_cookies,food:b_sugar)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:choco_cookies,food:vanilla)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:choco_cookies,food:egg)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:choco_cookies,food:yolk)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:choco_cookies,food:salt)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:choco_cookies,food:b_soda)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:browned_butter,food:butter)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:roux,food:butter)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:roux,food:flour)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:egg_fry,food:egg)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:toffee,food:w_sugar)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:toffee,food:butter)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:toffee,food:salt)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:pie_crust,food:salt)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:pie_crust,food:flour)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:pie_crust,food:w_sugar)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:pie_crust,food:egg)
Ingredient.create(amount:1,unit_of_measure:"unit",recipe:pie_crust,food:butter)
