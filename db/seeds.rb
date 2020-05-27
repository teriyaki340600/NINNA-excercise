# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Camera.create!(name: "EOS 5D",
#               camera_maker_id: "NIKON"
#              introduction: "最高の写真体験",
#              image_id:
#              File.open("./app/assets/images/EOS 5D.jpg"))

#Magnifier.create!(name: "AF-S NIKKOR 24-70mm f/2.8E ED VR",
#              maker: "NIKON",
#              introduction: "手軽に持ち運べる",
#              image_id:
#              File.open("./app/assets/images/NIK2470mm2.8VR.jpg"))
#CameraMaker.create!([
#              {:name => "NIKON"},
#              {:name => "CANON"},
#              {:name => "SONY"},
#              {:name => "LEICA"},
#              {:name => "SIGMA"},
#              {:name => "TAMRON"},
#              {:name => "ZEISS"},
#              {:name => "PENTAX"},
#              {:name => "PANASONIC"},
#              {:name => "FUJIFILM"}
#              ])
#Camera.create!(name: "EOS 5D",
#               camera_maker_id: 2,
#              introduction: "最高の写真体験",
#              image_id:
#              File.open("./app/assets/images/EOS 5D.jpg"))
#Camera.create!(name: "EOS RP",
#               camera_maker_id: 2,
#              introduction: "最高の写真性能",
#              image_id:
#              File.open("./app/assets/images/EOS RP.jpg"))
Camera.create!(name: "Z7",
               camera_maker_id: 1,
              introduction: "最高画質のミラーレス",
              image_id:
              File.open("./app/assets/images/Z7.jpg"))
Camera.create!(name: "D500",
               camera_maker_id: 1,
              introduction: "秒間10コマの連射機",
              image_id:
              File.open("./app/assets/images/D500.jpg"))