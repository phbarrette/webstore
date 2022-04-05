# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.destroy_all

Product.create([
    {
        name: "Beans",
        description: "They are good for your heart",
        image: "Beans.png",
        price: 3.98,
        quantity: 100,
    },
    {
        name: "Warrior Nemsis 2",
        description:"Solid Goalie Lacross Head",
        image: "nemisis.jpg",
        price: 49.99,
        quantity: 54,
    },
    {
        name: "F1 Car",
        description:"Zoom",
        image: "F1Car.jpg",
        price: 20620000.00,
        quantity: 3,
    }
])