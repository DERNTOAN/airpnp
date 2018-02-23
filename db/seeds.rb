# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#   name = Faker::HarryPotter.character.split
#   first_name = name.shift
#   last_name = name.join(" ")
#   email = "#{first_name}@#{name.join("_")}.com"
#   password = "password"
#   gender = ["male", "female", "other"].sample
#   age = (13..70).to_a.sample
#   user = User.create(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)
#   user.remote_photo_url = Faker::Avatar.image
#   user.save
# end

Booking.destroy_all
Bathroom.destroy_all
User.destroy_all
Review.destroy_all

i = 0

western_bathrooms = [
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394420/western_4.jpg",
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394420/western_2.jpg",
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394420/western_3.jpg",
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394419/western_1.jpg",
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394421/western_5.jpg",
  "https://cdn.freshome.com/wp-content/uploads/2014/02/Stylish-Modern-Bathroom-Design-24.jpg",
  "http://www.pickndecor.com/wp-content/uploads/2017/08/bathroom-color-kb-2462389-bath-vertical-color-combos-bathroom1-orcojoc-.jpg",
  "http://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2008/12/30/0/joe-marshall-guest-bathroom-blue.jpg.rend.hgtvcom.616.462.suffix/1400944275953.jpeg",
  "https://i1.wp.com/cabinetsmith.ca/wp-content/uploads/2017/11/modern-bathroom.jpeg?zoom=2&resize=1080%2C675&ssl=1",
  "http://www.bathroomsint.com/01_introduction/01_BGimages/HillHouse_01.jpg",
  "https://victoriaplum-images-3.imgix.net/uploads/3e6e7d9f-2a34-49d5-9057-6ee2170c3513.jpg",
  "https://victoriaplum-images-3.imgix.net/uploads/b7afe015-4de7-47e9-8b28-ba1c5ddfa0c4.jpg",
  "http://khoof.files.wordpress.com/2013/04/5477793_783e_1024x2000.jpg",
  "https://i2.wp.com/www.freaktography.com/wp-content/uploads/2015/08/Old-bathroom-in-abandoned-house.jpg?fit=1366%2C908",
  "http://www.healthytippingpoint.com/wp-content/uploads/2012/07/IMG_0736_thumb.jpg?x38904"
]

japanese_bathrooms = [
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394419/japanese_3.jpg",
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394420/japanese_2.jpg",
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394420/japanese_1.jpg"
]

turkish_bathrooms = [
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394419/turkish_1.jpg",
  "http://res.cloudinary.com/dlv6654pn/image/upload/v1519394418/turkish_2.jpg"
]

western_addresses = [
  {address: "Rudi-dutschke-Strasse 26", plz: "10969"},
  {address: "Rudi-dutschke-Strasse 15", plz: "10969"},
  {address: "Charlottenstrasse 70", plz: "10117"},
  {address: "Charlottenstrasse 1", plz: "10969"},
  {address: "Mauerstrasse 85", plz: "10117"},
  {address: "Leipziger Platz 9", plz: "10117"},
  {address: "Potsdamer Platz 1", plz: "10117"},
  {address: "Schützenstrasse 51", plz: "10117"},
  {address: "Niederkirchnerstraße 7", plz: "10117"},
  {address: "Wilhelmstraße 24", plz: "10963"},
  {address: "Friedrichstr. 58", plz: "10117"},
  {address: "Friedrichstr. 211", plz: "10963"},
  {address: "Markgrafenstr. 55", plz: "10117"},
  {address: "Markgrafenstr. 80", plz: "10969"},
  {address: "Besselstr. 3", plz: "10969"},
]

japanese_addresses = [
  {address: "Krausenstr. 21 ", plz: "10117"},
  {address: "Anhalter Str. 7", plz: "10963"},
  {address: "Puttkamer Str. 19", plz: "10969"}
]

turkish_addresses = [
  {address: "Hedemannstr. 1", plz: "10963"},
  {address: "Glinkastr. 5", plz: "10117"},
]

reviews = [
  "Clean and Great!",
  "Best toilet ever",
  "Best piss I ever had",
  "Perfect!",
  "Dirty and no Toilet-Paper",
  "Nice magazines!",
  "lovely host!",
  "Gross",
  "I almost peed my pants until I found this save haven",
  "Disgusting",
  "Kind of disturbed by the camera",
  "No suitable for overweight people."
]


15.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "#{first_name}@potter.com"
  password = "password"
  gender = ["male", "female", "other"].sample
  age = (18..70).to_a.sample
  user = User.new(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)
  user.remote_photo_url = Faker::Fillmurray.image
  user.save

  address = western_addresses[i][:address]
  plz = western_addresses[i][:plz]
  city = "Berlin"
  description = Faker::Lorem.paragraph
  price = (1..8).to_a.map { |n| n * 25}.sample
  handicapped = [true, false].sample
  style = "western"
  toilet_paper = (1..5).to_a.sample
  wipes = [true, false].sample
  baby = [true, false].sample
  bidet = [true, false].sample
  title = Faker::RickAndMorty.location
  unless user.id == nil
    bathroom = Bathroom.new(title: title, address: address, plz: plz, city: city, description: description, price: price, handicapped: handicapped, style: style, toilet_paper: toilet_paper, wipes: wipes, baby: baby, bidet: bidet, user: user)
    bathroom.remote_photo_url = western_bathrooms[i]
    bathroom.save
    i += 1
  end
end

i = 0

3.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "#{first_name}@potter.com"
  password = "password"
  gender = ["male", "female", "other"].sample
  age = (18..70).to_a.sample
  user = User.new(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)
  user.remote_photo_url = Faker::Fillmurray.image
  user.save

  address = japanese_addresses[i][:address]
  plz = japanese_addresses[i][:plz]
  city = "Berlin"
  description = Faker::Lorem.paragraph
  price = (1..8).to_a.map { |n| n * 25}.sample
  handicapped = [true, false].sample
  style = "japanese"
  toilet_paper = (1..5).to_a.sample
  wipes = [true, false].sample
  baby = [true, false].sample
  bidet = [true, false].sample
  title = Faker::RickAndMorty.location
  unless user.id == nil
    bathroom = Bathroom.new(title: title, address: address, plz: plz, city: city, description: description, price: price, handicapped: handicapped, style: style, toilet_paper: toilet_paper, wipes: wipes, baby: baby, bidet: bidet, user: user)
    bathroom.remote_photo_url = japanese_bathrooms[i]
    bathroom.save
    i += 1
  end
end

i = 0

2.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "#{first_name}@potter.com"
  password = "password"
  gender = ["male", "female", "other"].sample
  age = (18..70).to_a.sample
  user = User.new(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)
  user.remote_photo_url = Faker::Fillmurray.image
  user.save

  address = turkish_addresses[i][:address]
  plz = turkish_addresses[i][:plz]
  city = "Berlin"
  description = Faker::Lorem.paragraph
  price = (1..8).to_a.map { |n| n * 25}.sample
  handicapped = [true, false].sample
  style = "turkish"
  toilet_paper = (1..5).to_a.sample
  wipes = [true, false].sample
  baby = [true, false].sample
  bidet = [true, false].sample
  title = Faker::RickAndMorty.location
  unless user.id == nil
    bathroom = Bathroom.new(title: title, address: address, plz: plz, city: city, description: description, price: price, handicapped: handicapped, style: style, toilet_paper: toilet_paper, wipes: wipes, baby: baby, bidet: bidet, user: user)
    bathroom.remote_photo_url = turkish_bathrooms[i]
    bathroom.save
    i += 1
  end
end
# create fake bathrooms


first_name = "Anton"
last_name = "Castell"
email = "castellanton@gmail.com"
password = "123456"
gender = "male"
age = 29
photo = Faker::Fillmurray.image

title = "Cozy and clean toilet near Checkpoint Charlie"
address = "Charlottenstr. 4"
plz = 10969
city = "Berlin"
description = "My small but clean and cozy bathroom welcomes you with 4-ply-toiletpaper and an airrefreshener. Get the relief you need to enjoy strolling through the historic parts in Berlin!"
price = 100
handicapped = false
style = "western"
toilet_paper = 4
wipes = true
baby = true
bidet = false
user = User.create(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age, photo: photo)

50.times do
  b = Bathroom.all.sample
  u = User.all.sample
  if b.user != u
    r = Review.new(bathroom_id: b.id, user_id: u.id)
    r.content = reviews.sample
    r.rating = (0..5).to_a.sample
    Review.save
  end
end


  first_name = "Nicholas"
  last_name = "Utikal"
  email = "nicholasutikal@gmail.com"
  password = "123456"
  gender = "male"
  age = 26
  user = User.create(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)


  first_name = "Vini"
  last_name = "Tiet"
  email = "tiet@mira-am.com"
  password = "asdfgh"
  gender = "male"
  age = 34
  user = User.create(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)

  first_name = "Henrik"
  last_name = "Dittmar"
  email = "hd@gmx.de"
  password =  "123456"
  gender = "male"
  age = 23
  user = User.create(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)


