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
Category.destroy_all
Organization.destroy_all

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

bloom_photo = URI.open('https://www.fondation-humus.com/wp-content/uploads/2016/05/BLOOMcopie.png')
bloom = Organization.create(
  email: 'contact@bloomassociation.org',
  password: 'password',
  name: 'BLOOM',
  sub_category: SubCategory.find_by(name: 'Oceans'),
  description: 'BLOOM is a non-profit organization founded in 2005 that works to preserve the marine environment and species from unnecessary destruction and to increase social benefits in the fishing sector. BLOOM wages awareness and advocacy campaigns in order to accelerate the adoption of concrete solutions for the ocean, humans and the climate. BLOOM carries out scientific research projects, independent studies and evaluations that highlight crucial and unaddressed issues such as the financing mechanisms of the fishing sector. BLOOM’s actions are meant for the general public as well as policy-makers and economic stakeholders.'
)
bloom.photo.attach(io: bloom_photo, filename: 'bloom.png', content_type: 'image/png')

sea_shepherd_photo = URI.open('https://www.seekpng.com/png/full/760-7600985_sea-shepherd-logo-sticker-pack-of-sea-shepherd.png')
sea_shepherd = Organization.create(
  email: 'info@seashepherdglobal.org',
  password: 'password',
  name: 'Sea Shepherd',
  sub_category: SubCategory.find_by(name: 'Oceans'),
  description: 'Sea Shepherd’s sole mission is to protect and conserve the world’s oceans and marine wildlife. We work to defend all marine wildlife, from whales and dolphins, to sharks and rays, to fish and krill, without exception.'
)
sea_shepherd.photo.attach(io: sea_shepherd_photo, filename: 'sea_shepherd.png', content_type: 'image/png')

reforestaction_photo = URI.open('https://www.reforestaction.com/sites/all/themes/reforestaction/img/reforest-logo.png')
reforestaction = Organization.create(
  email: 'contact@reforestaction.org',
  password: 'password',
  name: 'Reforestaction',
  sub_category: SubCategory.find_by(name: 'Forest'),
  description: 'To preserve, restore and create forests around the world in order to develop their multiple environmental, social and economic benefits over the long term.'
)
reforestaction.photo.attach(io: reforestaction_photo, filename: 'reforestaction.png', content_type: 'image/png')

wwf_photo = URI.open('https://logos-marques.com/wp-content/uploads/2021/03/WWF-Logo.png')
wwf = Organization.create(
  email: 'contact@wwf.fr',
  password: 'password',
  name: 'WWF',
  sub_category: SubCategory.find_by(name: "Forest"),
  description: 'For 60 years, WWF has worked to help people and nature thrive.
  As the world’s leading conservation organization, WWF works in nearly 100 countries.
  At every level, we collaborate with people around the world to develop and deliver innovative solutions
  that protect communities, wildlife, and the places in which they live.'
)
wwf.photo.attach(io: wwf_photo, filename: 'wwf.png', content_type: 'image/png')

gccf_photo = URI.open('http://azure.wgp-cdn.co.uk/app-yourcat/posts/gccflogo.jpg?&width=1200&height=630&mode=crop&format=webp&webp.quality=40&scale=both')
gccf = Organization.create(
  email: 'contact@gccf.org',
  password: 'password',
  name: 'Governing Council of the Cat Fancy',
  sub_category: SubCategory.find_by(name: 'Cats'),
  description: '
  We are the premier cat registration organisation in the UK dedicated to cat health, welfare and responsible breeding. Our objective is to ensure that cats live healthy, happy lives.'
)
gccf.photo.attach(io: gccf_photo, filename: 'gccf.png', content_type: 'image/png')

spa_photo = URI.open('https://upload.wikimedia.org/wikipedia/fr/0/00/Logo_de_la_SPA_%28France%29.png')
spa = Organization.create(
  email: 'contact@spa.org',
  password: 'password',
  name: 'SPA - Société Protectrice des Animaux',
  sub_category: SubCategory.find_by(name: 'Cats'),
  description: 'The SPA operates in France for the well-being, defense and protection of animals. It acts on several essential missions thanks to a vast network on the national territory. Discover all its missions, you certainly do not know them all!'
)
spa.photo.attach(io: spa_photo, filename: 'spa.png', content_type: 'image/png')

bee_conservancy_photo = URI.open('https://pbs.twimg.com/media/EkOFjH1WAAIA8zR.jpg')
bee_conservancy = Organization.create(
  email: 'contact@bee-conservancy.org',
  password: 'password',
  name: 'The Bee Conservancy',
  sub_category: SubCategory.find_by(name: 'Bees'),
  description: 'The Honeybee Conservancy was founded in 2009 by Guillermo Fernandez in response to the news that bees across the globe were in crisis. In fall of 2020, The Honeybee Conservancy relaunched as The Bee Conservancy to better capture our work protecting all bees and securing environmental and food justice through education, research, habitat creation, and advocacy.'
)
bee_conservancy.photo.attach(io: bee_conservancy_photo, filename: 'bee_conservancy.png', content_type: 'image/png')

bees_in_the_d_photo = URI.open('https://static1.squarespace.com/static/62bb3d29e21b5e143b475feb/t/62bb8031c482087dcfe8642b/1661994392186/')
bees_in_the_d = Organization.create(
  email: 'contact@bees-in-the-d.org',
  password: 'password',
  name: 'Bees in the D',
  sub_category: SubCategory.find_by(name: 'Bees'),
  description: 'Bees in the D is a 501(c)(3) non-profit organization whose mission is to create a cooperative effort between residents, schools, organizations, and businesses in the city of Detroit and Southeast Michigan to contribute to both the health of honey bee colonies and native pollinators, and the education of their importance to our environment.'
)
bees_in_the_d.photo.attach(io: bees_in_the_d_photo, filename: 'bees_in_the_d.png', content_type: 'image/png')

planet_water_photo = URI.open('https://planet-water.org/wp-content/uploads/2022/02/PWF_Logo_Master-Color.png')
planet_water = Organization.create(
  email: 'contact@planet_water.org',
  password: 'password',
  name: 'Planet Water',
  sub_category: SubCategory.find_by(name: 'Drinking water'),
  description: 'We are a U.S.-based, non-profit organization focused on bringing clean water to the world’s most impoverished communities through the installation of community-based water filtration systems and implementing our Water-Health and Hygiene Education programs. Our projects are focused on schools, children, and rural communities across Asia and Latin America.'
)
planet_water.photo.attach(io: planet_water_photo, filename: 'planet_water.png', content_type: 'image/png')

# water_aid_photo = URI.open('https://www.pseau.org/gif/logo_wateraid_2019.png')
# water_aid = Organization.create(
#   email: 'contact@water_aid.org',
#   password: 'password',
#   name: 'Water Aid',
#   sub_category: SubCategory.find_by(name: 'Drinking water'),
#   description: "WaterAid transforms lives by improving access to clean water, hygiene and sanitation in the world's poorest communities. We work with local partners and influence decision-makers to maximise our impact."
# )
# water_aid.photo.attach(io: water_aid_photo, filename: 'water_aid.png', content_type: 'image/png')

wfp_photo = URI.open('https://cdn.wfp.org/guides/ui/v1.0.0/assets/logos/standard/en/wfp-logo-standard-blue-en.png')
wfp = Organization.create(
  email: 'contact@wfp.org',
  password: 'password',
  name: 'World Food Program',
  sub_category: SubCategory.find_by(name: 'Famine'),
  description: "The World Food Programme is the food-assistance branch of the United Nations.
  It is the world's largest humanitarian organization focused on hunger and food security,
  and the largest provider of school meals. Founded in 1961,
  it is headquartered in Rome and has offices in 80 countries."
)
wfp.photo.attach(io: wfp_photo, filename: 'wfp.png', content_type: 'image/png')

mercy_corps_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/9/96/MC_New_Logo_Horizontal_PMS_186_PC_10-15.jpg')
mercy_corps = Organization.create(
  email: 'contact@mercy-corps.org',
  password: 'password',
  name: 'Mercy Corps',
  sub_category: SubCategory.find_by(name: 'Famine'),
  description: 'Mercy Corps is an organization that aims to “alleviate suffering, poverty, and oppression by helping people build secure, productive and just communities.” Their mission is to increase accountability and participation within their partner countries by providing not only aid and supplies but on-the-ground assistance as well. They’re all about working from within to create change! Right now, Mercy Corps has members on the ground in Africa to help families get the food, water, and supplies they need in order to survive'
)
mercy_corps.photo.attach(io: mercy_corps_photo, filename: 'mercy_corps.png', content_type: 'image/png')

room_to_read_photo = URI.open('http://www.asiba.fr/wp-content/uploads/2015/11/room-to-read-logo.png')
room_to_read = Organization.create(
  email: 'contact@roomtoread.org',
  password: 'password',
  name: 'Room to Read',
  sub_category: SubCategory.find_by(name: 'Illiteracy'),
  description: 'Room to Read is creating a world free from illiteracy and gender inequality. We are achieving this goal by helping children in historically low-income communities develop literacy skills and a habit of reading, and by supporting girls as they build skills to succeed in school and negotiate key life decisions. We collaborate with governments and other partner organizations to deliver positive outcomes for children at scale.'
)
room_to_read.photo.attach(io: room_to_read_photo, filename: 'room_to_read.png', content_type: 'image/png')

rif_photo = URI.open('https://www.charities.org/sites/default/files/Logo_RIF_current-uecr-navy-01.png')
rif = Organization.create(
  email: 'contact@rif.org',
  password: 'password',
  name: 'Reading is Fundamental',
  sub_category: SubCategory.find_by(name: 'Illiteracy'),
  description: 'RIF creates needs-based content and targeted programs that align key literacy issues with proactive and measurable solutions. Our efforts begin with books and continue with resources, activities, and professional development for educators, parents, and literacy volunteers to ensure that reading turns into a journey of opportunity for all children.'
)
rif.photo.attach(io: rif_photo, filename: 'rif.png', content_type: 'image/png')

nea_photo = URI.open('https://i0.wp.com/warrenea.org/wp-content/uploads/2017/08/nea-logo.jpg?ssl=1')
nea = Organization.create(
  email: 'contact@nea.org',
  password: 'password',
  name: 'National Education Association',
  sub_category: SubCategory.find_by(name: 'Teachers'),
  description: 'Our mission is to advocate for education professionals and to unite our members and the nation to fulfill the promise of public education to prepare every student to succeed in a diverse and interdependent world.'
)
nea.photo.attach(io: nea_photo, filename: 'nea.png', content_type: 'image/png')

nagc_photo = URI.open('https://www.nagc.org/sites/all/themes/nagc/logo.png')
nagc = Organization.create(
  email: 'contact@nagc.org',
  password: 'password',
  name: 'National Association for Giften Children',
  sub_category: SubCategory.find_by(name: 'Teachers'),
  description: "NAGC's mission is to support those who enhance the growth and development of gifted and talented children through education, advocacy, community building, and research. We aim to help parents and families, K-12 education professionals including support service personnel, and members of the research and higher education community who work to help gifted and talented children as they strive to achieve their personal best and contribute to their communities."
)
nagc.photo.attach(io: nagc_photo, filename: 'nagc.png', content_type: 'image/png')

naeh_photo = URI.open('https://focusstrategies.net/wp-content/uploads/2020/02/0020_alliancecolorlogo.jpg')
neah = Organization.create(
  email: "contact@naeh.org",
  password: 'password',
  name: 'National Alliance to End Homelessness',
  sub_category: SubCategory.find_by(name: 'Homelessness'),
  description: 'The National Alliance to End Homelessness is a nonpartisan, nonprofit organization whose sole purpose is to end homelessness in the United States. We use research and data to find solutions to homelessness; we work with federal and local partners to create a solid base of policy and resources that support those solutions; and then we help communities implement them.
  Our strength is that we are an outcome-driven organization. Starting with our name and continuing with how we choose the work we do, allocate staff time, and use our resources, we focus on one thing: ending homelessness.
  This mission is what drives us. It is how we measure our impact.'
)
neah.photo.attach(io: naeh_photo, filename: 'naeh.png', content_type: 'image/png')

streetwise_photo = URI.open('https://www.marceldigital.com/media/x1anwcxk/stretwise.png?mode=max&width=630&height=1200&rnd=132227929746500000')
streetwise = Organization.create(
  email: 'contact@streetwise.org',
  password: 'password',
  name: 'Streetwise',
  sub_category: SubCategory.find_by(name: 'Homelessness'),
  description: 'StreetWise exists to elevate marginalized voices and provide opportunities for individuals to earn an income with dignity. Anyone who wants to work has the opportunity to move themselves out of crisis.  StreetWise provides “a hand up, not a handout.”'
)
streetwise.photo.attach(io: streetwise_photo, filename: 'streetwise.png', content_type: 'image/png')

unicef_photo = URI.open('https://www.lemondedesados.fr/wp-content/uploads/2016/11/LOGO-UNICEF-PETIT.png')
unicef = Organization.create(
  email: 'servicerelationdonateurs@unicef.fr',
  password: 'password',
  name: 'UNICEF',
  sub_category: SubCategory.find_by(name: "Children"),
  description: 'UNICEF works in over 190 countries and territories to save children’s lives,
  to defend their rights, and to help them fulfil their potential,
  from early childhood through adolescence. And we never give up.'
)
unicef.photo.attach(io: unicef_photo, filename: 'unicef.png', content_type: 'image/png')

make_a_wish_photo = URI.open('https://vectorlogoseek.com/wp-content/uploads/2018/09/make-a-wish-vector-logo.png')
make_a_wish = Organization.create(
  email: 'contact@makeawish.org',
  password: 'password',
  name: 'Make a Wish',
  sub_category: SubCategory.find_by(name: 'Children'),
  description: 'Wishes are more than just a nice thing. And they are far more than gifts, or singular events in time. Wishes impact everyone involved—wish kids, volunteers, donors, sponsors, medical professionals and communities. For wish kids, just the act of making their wish come true can give them the courage to comply with their medical treatments. Parents might finally feel like they can be optimistic. And still others might realize all they have to offer the world through volunteer work or philanthropy. '
)
make_a_wish.photo.attach(io: make_a_wish_photo, filename: 'make_a_wish.png', content_type: 'image/png')

culture_action_europe_photo = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzWZz49p_CV6Q6On96nTgf9o7nJigws0cleu8-hgnlqVsM-eBEgc_lnCWrWetoNZBA1mw&usqp=CAU')
culture_action_europe = Organization.create(
  email: 'contact@cultureaction.org',
  password: 'password',
  name: 'Culture Action Europe',
  sub_category: SubCategory.find_by(name: 'Painting'),
  description: 'Our mission is to advocate the arts and culture as a fundamental building block of the common future of Europe and beyond. Our network enables us to research the multiple natures of cultural practices, to interact and mediate in order to ease effective policy-level communications and to share our collective knowledge and expertise.'
)
culture_action_europe.photo.attach(io: culture_action_europe_photo, filename: 'culture_action_europe.png', content_type: 'image/png')

iaa_photo = URI.open('http://www.aiap-iaa.org/images/logo%20aiap%20-%20kopie.jpg')
iaa = Organization.create(
  email: 'contact@iaa.org',
  password: 'password',
  name: 'International Association of Art',
  sub_category: SubCategory.find_by(name: 'Painting'),
  description: "Main objectives of IAA Europe are the exchange between artists and organisations engaged in the fields of art and culture in Europe and beyond, the discussion and elaboration of artistic matters within Europe as well as the promotion of the flow of information regarding e.g. working conditions, social security systems, authors' rights and free flow of artworks. It aims to make artists' interests known to European political institutions and their representatives."
)
iaa.photo.attach(io: iaa_photo, filename: 'iaa.png', content_type: 'image/png')

aim_photo = URI.open('https://upload.wikimedia.org/wikipedia/en/thumb/f/f0/Association_of_Independent_Music_Logo.jpg/250px-Association_of_Independent_Music_Logo.jpg')
aim = Organization.create(
  email: 'contact@aim.org',
  password: 'password',
  name: 'Association of Independant Music',
  sub_category: SubCategory.find_by(name: 'Music'),
  description: 'AIM is the not-for-profit trade body exclusively representing the UK’s independent music sector, which makes up a quarter of the recorded music market. Now in its 20th year, AIM’s members range from the largest, most respected record labels and associated music businesses in the world to self-releasing artists and the next generation of entrepreneurs in music. AIM promotes and supports this exciting and diverse sector globally and provides a range of services, commercial opportunities and practical help to members, enabling them to innovate, grow and break into new markets.'
)
aim.photo.attach(io: aim_photo, filename: 'aim.png', content_type: 'image/png')

music_all_photo = URI.open('https://assomusicall.files.wordpress.com/2016/11/cropped-logo-carrecc81-petit.png?w=200')
music_all = Organization.create(
  email: 'contact@musicall.org',
  password: 'password',
  name: "Music'All",
  sub_category: SubCategory.find_by(name: 'Music'),
  description: "Music'All is an association founded in 1996 whose vocation is to create, each year, a unique musical comedy integrating children with mental disabilities from the Medico-Professional Institute of Roitelet of Tourcoing, and to donate the benefits to the children. of the institute in the form of a cultural activity organized by the student members of the association."
)
music_all.photo.attach(io: music_all_photo, filename: 'music_all.png', content_type: 'image/png')

puts '-------------------- ORGANIZATIONS CREATED ---------------------------------------------------'

puts '-------------------- CREATE EVENTS ---------------------------------------------------'

event = Event.create(
  name: 'Event',
  description: 'We organize this event to test this index events',
  start_date: '2022-09-23',
  end_date: '2022-09-24',
  address: "261 Bd de Tournai, Villeneuve-d'Ascq",
  organization: music_all,
)

event2 = Event.create(
  name: 'Event 2',
  description: 'Praesent condimentum tortor ligula, at ullamcorper orci interdum nec. Morbi vel eros efficitur, sagittis velit et, dapibus purus. Nam dui dui, vulputate et nulla tristique, ultricies sodales velit. Vestibulum suscipit felis sed varius cursus. Pellentesque habitant morbi tristique senectus et',
  start_date: '2022-09-13',
  end_date: '2022-09-12',
  address: 'Center-Park, New-York',
  organization: streetwise,
)

event3 = Event.create(
  name: 'Event 3',
  description: 'Praesent fringilla dignissim urna eu semper. Vestibulum sapien eros, vulputate mollis elementum id, dictum at ipsum. Ut vel auctor erat. Nam vel varius libero. Morbi justo quam, mattis a ligula faucibus, luctus posuere sapien. Nullam hendrerit posuere lobortis. In vel dui non turpis interdum e',
  start_date: '2022-10-01',
  end_date: '2022-10-01',
  address: '12 rue Massena, Lille',
  organization: unicef,
)

event4 = Event.create(
  name: 'Event 4',
  description: 'Pellentesque ac scelerisque ante, quis vulputate ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse potenti. In suscipit tristique ante, vitae convallis massa vulputate in. Aliquam mauris diam, consectetur at accumsan eu, aliquam et lacus. Vest',
  start_date: '2022-09-30',
  end_date: '2022-09-30',
  address: 'Avenue Mohamed V, Marrakech',
  organization: aim,
)

event5 = Event.create(
  name: 'Event 5',
  description: 'Quisque mattis ex enim, egestas fermentum nulla egestas et. Fusce eu diam pulvinar, rhoncus nibh nec, interdum urna. Donec nec nulla nec diam vulputate laoreet vel sed tortor. Donec non risus aliquam, ornare est at, sollicitudin felis. Vivamus consequat, leo et luctus hendrerit, erat leo sod',
  start_date: '2022-11-11',
  end_date: '2022-11-20',
  address: '6024 1ère Avenue, Montréal',
  organization: sea_shepherd,
)

event6 = Event.create(
  name: 'Event 6',
  description: 'raesent pulvinar metus justo, sed gravida eros porttitor a. Vivamus nec finibus diam. Sed faucibus tortor eget sem lobortis, in cursus turpis tempor. Phasellus quis libero lobortis, euismod lectus a, lobortis magna. Aenean at nulla faucibus tortor venenatis porttitor blandit ac dolor. Nulla ultri',
  start_date: '2023-01-12',
  end_date: '2023-01-12',
  address: 'Avenue Mohamed V, Marrakech',
  organization: make_a_wish,
)

puts '-------------------- EVENTS CREATED ---------------------------------------------------'
