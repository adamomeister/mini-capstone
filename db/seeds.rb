# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product ==> name: string, price: integer, image_url: string, description: string

product = Product.new(name: "Sweet robot", price: 99, image_url: "some url", description: "the sweetest robot ever made")
product.save

product = Product.new(name: "Spatula", price: 5, image_url: "some url", description: "flip things over")
product.save
