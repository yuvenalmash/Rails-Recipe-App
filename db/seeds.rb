# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


   third_user = User.create!(email: 'mudasir@gmail.com',  password:'123456', name: 'mudasir')
   four_user = User.create!(email: 'yuvenal@gmail.com',  password:'123456', name: 'yuvenal')
   
Recipe.create!(user_id: third_user, name: 'Recipe by Mudasir 1', description: 'This is Tom first post This is Tom first postThis is Tom first postThis is Tom first postThis is Tom first postThis is Tom first postThis is Tom first post' )
Recipe.create!(user_id: third_user, name: 'Recipe by Mudasir 2', description: 'This is Tom second post This is Tom second postThis is Tom second postThis is Tom second postThis is Tom second postThis is Tom second postThis is Tom second postThis is Tom second post')
Food.create!(user_id: four_user, name: 'Recipe by Yuvenal 1', description: 'This is Lilly first postThis is Lilly first postThis is Lilly first postThis is Lilly first postThis is Lilly first postThis is Lilly first post')
Food.create!(user_id: four_user, name: 'Recipe by Yuvenal 2', description: 'This is Lilly first postThis is Lilly first postThis is Lilly first postThis is Lilly first postThis is Lilly first postThis is Lilly first post')
