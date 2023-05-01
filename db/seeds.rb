# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Item.destroy_all
Item.create([
    {
        id: 1,
        names: "Bazooka",
        description: "This is a Bazooka",
      
        price: 99.99,
        quantity: 10
    },
    {
        id: 2,
        names: "Samuel",
        description: "This is Samuel and he is a cute little guy",
      
        price: 34.99,
        quantity: 10
    },
    {
        id: 3,
        names: "Empty Box",
        description: "12 million tons of granite, impossible to carve with the tools at the times, slightly radioactive, and aligns perfectly with the northern most star in the sky",
     
        price: 8.50,
        quantity: 10
    },
    {
        id: 4, 
        names: "Money",
        description: "Essentially the real deal if you dont look too hard",
    
        price: 1.25,
        quantity: 10
    },

])

Blog.destroy_all