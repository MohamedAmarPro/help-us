# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

puts '----------------- FAREWELL PREVIOUS USERS---------------------------------------------------'
User.destroy_all

puts 'Waiting...'

puts '------------------ CREATING USERS --------------------------------------------------'
user = URI.open('https://avatars.githubusercontent.com/u/78362026?v=4')
alan = User.create(email: 'alan@lewagon.com', password: 'password', pseudo: 'Mitaka')
alan.photo.attach(io: user, filename: 'Alan.png', content_type: 'image/png')
user2 = URI.open('https://avatars.githubusercontent.com/u/63310460?v=4')
titou = User.create(email: 'cosy@lewagon.com', password: 'password', pseudo: 'Titou')
titou.photo.attach(io: user2, filename: 'Titouan.png', content_type: 'image/png')
user3 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657602360/yndjqzd5dulcqltvwpzm.jpg')
momo = User.create(email: 'momo@lewagon.com', password: 'password', pseudo: 'MomoMerko')
momo.photo.attach(io: user3, filename: 'Mohamed.png', content_type: 'image/png')

puts '-------------------- USERS CREATED ---------------------------------------------------'
