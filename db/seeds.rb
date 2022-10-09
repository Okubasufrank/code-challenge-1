# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Lets cook some pizzas"

5.times do
    Restaurant.create(
        name:Faker::Restaurant.name,
        address:Faker::Address.street_address
    )
end

Pizza.create(
    name:"Neapolitan Pizza",
    ingridients:"Tomato sauce, mozzarella, basil"
)
Pizza.create(
    name:"Brooklyn Pizza",
    ingridients:"Tomato sauce, mozzarella, basil"
)
Pizza.create(
    name:"Kamikaze Pizza",
    ingridients:"Tomato sauce, mozzarella, basil"
)
Pizza.create(
    name:"Ukrainian Pizza",
    ingridients:"Tomato sauce, mozzarella, basil"
)
Pizza.create(
    name:"vegan Pizza",
    ingridients:"Tomato sauce, mozzarella, basil"
)

20.times do
    RestaurantPizza.create(
        price: rand(1..30),
        pizza_id:Pizza.all[rand(Pizza.count)].id,
        restaurant_id:Restaurant.all[rand(Restaurant.count)].id
    )
end

puts "Pizza are ready!"

