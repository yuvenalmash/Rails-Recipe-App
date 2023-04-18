# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

   # Recipe.delete_all
   # User.delete_all
   
   third_user = User.create!(email: 'mudasir@gmail.com',  password:'123456', name: 'mudasir')
   four_user = User.create!(email: 'yuvenal@gmail.com',  password:'123456', name: 'yuvenal')
# third_user = User.find(1)
# four_user = User.find(2)
r1 = Recipe.create!(user: third_user, public: 'True', preparation_time: 4, cooking_time: 2, name: 'Recipe by Mudasir 1', description: 'This recipe description , This recipe description , This recipe description , This recipe description , This recipe description , This recipe description' )
r2 = Recipe.create!(user: four_user, public: 'True', preparation_time: 2, cooking_time: 2, name: 'Recipe by Yuvenal 1', description: 'This recipe description , This recipe description , This recipe description , This recipe description , This recipe description , This recipe description' )
r3 = Recipe.create!(user: third_user, public: 'True', preparation_time: 2, cooking_time: 8, name: 'Recipe by Mudasir 2', description: 'This recipe description , This recipe description , This recipe description , This recipe description , This recipe description , This recipe description' )
r4 = Recipe.create!(user: four_user, public: 'True', preparation_time: 2, cooking_time: 2, name: 'Recipe by Yuvenal 2', description: 'This recipe description , This recipe description , This recipe description , This recipe description , This recipe description , This recipe description' )
r5 = Recipe.create!(user: third_user, public: 'True', preparation_time: 2, cooking_time: 1, name: 'Recipe by Mudasir 2', description: 'This recipe description , This recipe description , This recipe description , This recipe description , This recipe description , This recipe description' )
r6 = Recipe.create!(user: four_user, public: 'True', preparation_time: 2, cooking_time: 1, name: 'Recipe by Mudasir 2', description: 'This recipe description , This recipe description , This recipe description , This recipe description , This recipe description , This recipe description' )
r7 = Recipe.create!(user: third_user, public: 'True', preparation_time: 2, cooking_time: 1, name: 'Recipe by Mudasir 2', description: 'This recipe description , This recipe description , This recipe description , This recipe description , This recipe description , This recipe description' )
r8 = Recipe.create!(user: third_user, public: 'True', preparation_time: 1, cooking_time: 1, name: 'Recipe by Mudasir 2', description: 'This recipe description , This recipe description , This recipe description , This recipe description , This recipe description , This recipe description' )


f1 = Food.create!(user: third_user, name: 'Rice', measurement_unit: '1kg', price: 10, quantity: 1)
f2 = Food.create!(user: third_user, name: 'chicken', measurement_unit: '1kg', price: 10, quantity: 1)
f3 = Food.create!(user: third_user, name: 'BBQ', measurement_unit: '1kg', price: 10, quantity: 1)
f4 = Food.create!(user: four_user, name: 'Beef', measurement_unit: '1kg', price: 10, quantity: 1)

Recipefood.create!(quantity: 1 , recipe: r1, food: f1 )
Recipefood.create!(quantity: 1 , recipe: r1, food: f1 )
Recipefood.create!(quantity: 1 , recipe: r2, food: f1 )

Recipefood.create!(quantity: 1 , recipe: r2, food: f2 )
Recipefood.create!(quantity: 1 , recipe: r2, food: f3 )
Recipefood.create!(quantity: 1 , recipe: r2, food: f2 )