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

i = 0

bathrooms = [
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

addresses = [
  {address: "Rudi-dutschke-Strasse 26", plz: "10969"},
  {address: "Charlottenstrasse 13", plz: "10969"},
  {address: "Charlottenstrasse 1", plz: "10969"},
  {address: "Mauerstrasse 85", plz: "10117"},
  {address: "Leipziger Platz 9", plz: "10117"},
  {address: "Potsdamer Platz 1", plz: "10117"},
  {address: "Leipziger Platz 1", plz: "10117"},
  {address: "Schützenstrasse 51", plz: "10117"},
  {address: "Niederkirchnerstraße 7", plz: "10117"},
  {address: "Wilhelmstraße 24", plz: "10963"},
]


10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "#{first_name}@potter.com"
  password = "password"
  gender = ["male", "female", "other"].sample
  age = (18..70).to_a.sample
  user = User.new(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)
  user.remote_photo_url = Faker::Avatar.image
  user.save

  address= addresses[i][:address]
  plz = addresses[i][:plz]
  city = "Berlin"
  description = Faker::Lorem.paragraph
  price = (1..8).to_a.map { |n| n * 25}.sample
  handicapped = [true, false].sample
  style = %w(western turkish japanese).sample
  toilet_paper = (1..5).to_a.sample
  wipes = [true, false].sample
  baby = [true, false].sample
  bidet = [true, false].sample
  address_complete = address + " " + city
  unless user.id == nil
    bathroom = Bathroom.new(title: "test", address: address, plz: plz, city: city, description: description, price: price, handicapped: handicapped, style: style, toilet_paper: toilet_paper, wipes: wipes, baby: baby, bidet: bidet, user: user, address_complete: address_complete)
    bathroom.remote_photo_url = bathrooms[i]
    bathroom.save
    i += 1
  end
end
# create fake bathrooms

50.times do
  bathroom = Bathroom.all.sample
  user = User.all.sample
  booking = Booking.new(bathroom_id: bathroom.id, user: user)
  booking.save
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


  first_name = "Anton"
  last_name = "Castell"
  email = "castellanton@gmail.com"
  password = "123456"
  gender = "male"
  age = 29
  user = User.create(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)


  first_name = "Henrik"
  last_name = "Dittmar"
  email = "hd@gmx.de"
  password =  "123456"
  gender = "male"
  age = 23
  user = User.create(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)


