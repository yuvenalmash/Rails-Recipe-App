# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

First_user =
  User.create!(email: "mudasir@gmail.com", password: "123456", name: "mudasir")
Second_user =
  User.create!(email: "yuvenal@gmail.com", password: "123456", name: "yuvenal")

foods =
  Food.create(
    [
      {
        name: "First_user food 1",
        measurement_unit: "kg",
        price: 10,
        quantity: 1,
        user_id: First_user.id
      },
      {
        name: "First_user food 2",
        measurement_unit: "kg",
        price: 10,
        quantity: 1,
        user_id: First_user.id
      },
      {
        name: "First_user food 3",
        measurement_unit: "kg",
        price: 10,
        quantity: 1,
        user_id: First_user.id
      },
      {
        name: "Second_user food 1",
        measurement_unit: "kg",
        price: 10,
        quantity: 1,
        user_id: Second_user.id
      },
      {
        name: "Second_user food 2",
        measurement_unit: "kg",
        price: 10,
        quantity: 1,
        user_id: Second_user.id
      },
      {
        name: "Second_user food 3",
        measurement_unit: "kg",
        price: 10,
        quantity: 1,
        user_id: Second_user.id
      }
    ]
  )

Recipe.create!(
  user_id: first_user,
  name: "Recipe by Mudasir 1",
  description:
    "This is Tom first post This is Tom first postThis is Tom first postThis is Tom first postThis is Tom first postThis is Tom first postThis is Tom first post"
)
Recipe.create!(
  user_id: first_user,
  name: "Recipe by Mudasir 2",
  description:
    "This is Tom second post This is Tom second postThis is Tom second postThis is Tom second postThis is Tom second postThis is Tom second postThis is Tom second postThis is Tom second post"
)
