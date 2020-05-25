# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Camera.create!(name: "D500", 
              maker: "NIKON", 
              introduction: "高速連写が売りです", 
              image_id: 
              File.open("./app/assets/images/D500.jpg"))

Magnifier.create!(name: "AF-S NIKKOR 24mm f/1.4G ED", 
              maker: "NIKON", 
              introduction: "美しいボケ味を発揮", 
              image_id: 
              File.open("./app/assets/images/NIK24mm1.4.jpg"))