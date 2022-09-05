# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

puts '----------------- FAREWELL PREVIOUS SEEDS---------------------------------------------------'
User.destroy_all
Organization.destroy_all
Category.destroy_all

puts 'Waiting...'

puts '------------------ CREATING USERS --------------------------------------------------'

puts 'Waiting...'

user = URI.open('https://avatars.githubusercontent.com/u/78362026?v=4')
alan = User.create(email: 'alan@lewagon.com', password: 'password', pseudo: 'Mitaka', first_name: 'Alan', last_name: 'Laurier', birth_date: '1997/12/09', address: 'Wattignies')
alan.photo.attach(io: user, filename: 'Alan.png', content_type: 'image/png')
user2 = URI.open('https://avatars.githubusercontent.com/u/63310460?v=4')
titou = User.create(email: 'cosy@lewagon.com', password: 'password', pseudo: 'Titou', first_name: 'Titouan', last_name: 'Andritsos', birth_date: '1990/03/22', address: 'Nantes')
titou.photo.attach(io: user2, filename: 'Titouan.png', content_type: 'image/png')
user3 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657602360/yndjqzd5dulcqltvwpzm.jpg')
momo = User.create(email: 'momo@lewagon.com', password: 'password', pseudo: 'MomoMerko', first_name: 'Mohamed', last_name: 'Ait Amar', birth_date: '1993/02/19', address: 'Marrakech')
momo.photo.attach(io: user3, filename: 'Mohamed.png', content_type: 'image/png')

puts '-------------------- USERS CREATED ---------------------------------------------------'

puts '----------------- FAREWELL PREVIOUS USERS---------------------------------------------------'

puts 'Waiting...'

puts '------------------ CREATING ORGANIZATIONS --------------------------------------------------'

puts 'Waiting...'

environment = Category.create(name: "Environment")
animals = Category.create(name: "Animals")
humanitarian = Category.create(name: "Humanitarian")
employment = Category.create(name: "Employment")
education = Category.create(name: "Education")
solidarity = Category.create(name: "Solidarity")
culture = Category.create(name: "Culture")

SubCategory.create(name: "Oceans", category: environment)
SubCategory.create(name: "Forest", category: environment)
SubCategory.create(name: "Cats", category: animals)
SubCategory.create(name: "Bees", category: animals)
SubCategory.create(name: "Homelessness", category: solidarity)
SubCategory.create(name: "Children", category: solidarity)
SubCategory.create(name: "Jobs", category: employment)
SubCategory.create(name: "Unions", category: employment)
SubCategory.create(name: "Painting", category: culture)
SubCategory.create(name: "Drinking water", category: humanitarian)
SubCategory.create(name: "Famine", category: humanitarian)
SubCategory.create(name: "Music", category: culture)
SubCategory.create(name: "Illiteracy", category: education)
SubCategory.create(name: "Teachers", category: education)

puts 'Waiting...'

file = URI.open('http://loremflickr.com/400/400/panda')
organization = Organization.new(
  email: 'contact@wwf.fr',
  password: 'password',
  name: 'WWF',
  sub_category: SubCategory.find_by(name: "Forest"),
  description: 'For 60 years, WWF has worked to help people and nature thrive.
  As the world’s leading conservation organization, WWF works in nearly 100 countries.
  At every level, we collaborate with people around the world to develop and deliver innovative solutions
  that protect communities, wildlife, and the places in which they live.'
)
organization.photo.attach(io: file, filename: 'wwf.png', content_type: 'image/png')

file2 = URI.open('http://loremflickr.com/400/400/kids')
organization2 = Organization.new(
  email: 'servicerelationdonateurs@unicef.fr',
  password: 'password',
  name: 'UNICEF',
  sub_category: SubCategory.find_by(name: "Children"),
  description: 'UNICEF works in over 190 countries and territories to save children’s lives,
  to defend their rights, and to help them fulfil their potential,
  from early childhood through adolescence. And we never give up.'
)
organization2.photo.attach(io: file2, filename: 'unicef.png', content_type: 'image/png')

puts 'Waiting...'

file3 = URI.open('http://loremflickr.com/400/400/meal')
organization3 = Organization.new(
  email: 'global.philanthropy@wfp.org.',
  password: 'password',
  name: 'World Food Programme',
  sub_category: SubCategory.find_by(name: "Famine"),
  description: "The World Food Programme is the food-assistance branch of the United Nations.
  It is the world's largest humanitarian organization focused on hunger and food security,
  and the largest provider of school meals. Founded in 1961,
  it is headquartered in Rome and has offices in 80 countries."
)
organization3.photo.attach(io: file3, filename: 'wfp.png', content_type: 'image/png')

puts '-------------------- ORGANIZATIONS CREATED ---------------------------------------------------'

organization.save!
organization2.save!
organization3.save!
