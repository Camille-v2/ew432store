# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Recreate all products: File

Product.destroy_all

Product.create!([
    {
        name: "3 Hole Punch",
        description: "It punches not one.. not two.. but three holes in the side of your paper.",
        price: 10,
        stock: 50,
        image: "3HolePunch.PNG"
    },
    {
        name: "Paper",
        description: "A fine ream of paper to accompany that new 3 hole punch.",
        price: 3.99,
        stock: 50,
        image: "PaperReam.PNG"
    },
    {
        name: "Pencils",
        description: "A collective box of basic wooden number two pencils. Extra strength eraser for those who chew nervously during tests.",
        price: 4.99,
        stock: 50,
        image: "pencils.PNG" 
    },
    {
        name: "Pens",
        description: "8 pack of colorful gel pens that look great in planners and on calendars.",
        price: 8.99,
        stock: 50,
        image: "pens.PNG"
    },
    {
        name: "Stapler",
        description: "This stapler can get through at least 15 pages, tackling large projects with a perfect staple each time.",
        price: 6.99,
        stock: 15,
        image: "stapler.jpg"
    },
    {
        name: "Staples",
        description: "Sold in packs of 300 staples. Will fit in any standard stapler.",
        price: 4.99,
        stock: 25,
        image: "staples.png"
    }
])
