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

environment_photo = URI.open('https://images.unsplash.com/photo-1466629437334-b4f6603563c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1778&q=80')
environment = Category.create(name: "Environment")
environment.photo.attach(io: environment_photo, filename: 'environment.png', content_type: 'image/png')
animals_photo = URI.open('https://images.unsplash.com/photo-1516064576505-9b9b9777118c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80')
animals = Category.create(name: "Animals")
animals.photo.attach(io: animals_photo, filename: 'animals.png', content_type: 'image/png')
humanitarian_photo = URI.open('https://images.unsplash.com/photo-1517351313798-6f674000e4aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1108&q=80')
humanitarian = Category.create(name: "Humanitarian")
humanitarian.photo.attach(io: humanitarian_photo, filename: 'humaniatarian.png', content_type: 'image/png')
employment_photo = URI.open('https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
employment = Category.create(name: "Employment")
employment.photo.attach(io: employment_photo, filename: 'employment.png', content_type: 'image/png')
education_photo = URI.open('https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1773&q=80')
education = Category.create(name: "Education")
education.photo.attach(io: education_photo, filename: 'education.png', content_type: 'image/png')
solidarity_photo = URI.open('https://images.unsplash.com/photo-1655720359248-eeace8c709c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1250&q=80')
solidarity = Category.create(name: "Solidarity")
solidarity.photo.attach(io: solidarity_photo, filename: 'solidarity.png', content_type: 'image/png')
culture_photo = URI.open('https://images.unsplash.com/photo-1515658323406-25d61c141a6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y3VsdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
culture = Category.create(name: "Culture")
culture.photo.attach(io: culture_photo, filename: 'culture.png', content_type: 'image/png')

oceans_photo = URI.open('https://images.unsplash.com/photo-1621775639115-ad55c93f8141?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8b2NlYW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
oceans = SubCategory.create(name: "Oceans", category: environment)
oceans.photo.attach(io: oceans_photo, filename: 'oceans.png', content_type: 'image/png')
forest_photo = URI.open('https://images.unsplash.com/photo-1535273592342-5c7cea623ebb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGZvcmVzdCUyMGFtYXpvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
forest = SubCategory.create(name: "Forest", category: environment)
forest.photo.attach(io: forest_photo, filename: 'forest.png', content_type: 'image/png')
cats_photo = URI.open('https://images.unsplash.com/photo-1570824104453-508955ab713e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2F0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
cats = SubCategory.create(name: "Cats", category: animals)
cats.photo.attach(io: cats_photo, filename: 'cats.png', content_type: 'image/png')
bees_photo = URI.open('https://images.unsplash.com/photo-1573499036770-97f5805ab571?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmVlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
bees = SubCategory.create(name: "Bees", category: animals)
bees.photo.attach(io: bees_photo, filename: 'bees.png', content_type: 'image/png')
homelessness_photo = URI.open('https://images.unsplash.com/profile-1642794791806-e774ac38b187image?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff')
homelessness = SubCategory.create(name: "Homelessness", category: solidarity)
homelessness.photo.attach(io: homelessness_photo, filename: 'homelessness.png', content_type: 'image/png')
children_photo = URI.open('https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hpbGRyZW58ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
children = SubCategory.create(name: "Children", category: solidarity)
children.photo.attach(io: children_photo, filename: 'children.png', content_type: 'image/png')
jobs_photo = URI.open('https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8am9ic3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
jobs = SubCategory.create(name: "Jobs", category: employment)
jobs.photo.attach(io: jobs_photo, filename: 'jobs.png', content_type: 'image/png')
unions_photo = URI.open('https://veille-travail.anact.fr/sites/default/files/vignettes/produits-documentaires/engages_syndicaux.jpg')
unions = SubCategory.create(name: "Unions", category: employment)
unions.photo.attach(io: unions_photo, filename: 'unions.png', content_type: 'image/png')
painting_photo = URI.open('https://images.unsplash.com/photo-1541753866388-0b3c701627d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBhaW50aW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
painting = SubCategory.create(name: "Painting", category: culture)
painting.photo.attach(io: painting_photo, filename: 'painting.png', content_type: 'image/png')
drinking_water_photo = URI.open('https://images.unsplash.com/photo-1512925971204-7b6457b669d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAxfHxkcmlua2luZyUyMHdhdGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
drinking_water = SubCategory.create(name: "Drinking water", category: humanitarian)
drinking_water.photo.attach(io: drinking_water_photo, filename: 'drinking_water.png', content_type: 'image/png')
famine_photo = URI.open('https://media.sudouest.fr/9522981/1000x500/58178512.jpg?v=1646421425')
famine = SubCategory.create(name: "Famine", category: humanitarian)
famine.photo.attach(io: famine_photo, filename: 'famine.png', content_type: 'image/png')
music_photo = URI.open('https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
music = SubCategory.create(name: "Music", category: culture)
music.photo.attach(io: music_photo, filename: 'music.png', content_type: 'image/png')
illiteracy_photo = URI.open('https://media.istockphoto.com/photos/person-leads-a-finger-on-the-lines-in-the-book-but-instead-of-letters-picture-id1288621476?k=20&m=1288621476&s=612x612&w=0&h=ZNyvTiFCfvjZ0EaUh31De8XNvyooFEJPSe-VGQHTTIw=')
illiteracy = SubCategory.create(name: "Illiteracy", category: education)
illiteracy.photo.attach(io: illiteracy_photo, filename: 'illiteracy.png', content_type: 'image/png')
teachers_photo = URI.open('https://images.unsplash.com/photo-1583468982228-19f19164aee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dGVhY2hlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')
teachers = SubCategory.create(name: "Teachers", category: education)
teachers.photo.attach(io: teachers_photo, filename: 'teachers.png', content_type: 'image/png')

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
