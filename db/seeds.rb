# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  name = Faker::HarryPotter.character.split
  first_name = name.shift
  last_name = name.join(" ")
  email = "#{first_name}@#{name.join("_")}.com"
  password = "password"
  gender = ["male", "female", "other"].sample
  age = (13..70).to_a.sample
  User.create(first_name: first_name, last_name: last_name, email: email, password: password, gender: gender, age: age)

# create fake bathrooms





# "http://www.pickndecor.com/wp-content/uploads/2017/08/bathroom-color-kb-2462389-bath-vertical-color-combos-bathroom1-orcojoc-.jpg"
# "http://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2008/12/30/0/joe-marshall-guest-bathroom-blue.jpg.rend.hgtvcom.616.462.suffix/1400944275953.jpeg"
# "https://i1.wp.com/cabinetsmith.ca/wp-content/uploads/2017/11/modern-bathroom.jpeg?zoom=2&resize=1080%2C675&ssl=1"
# "http://www.bathroomsint.com/01_introduction/01_BGimages/HillHouse_01.jpg"
# "https://victoriaplum-images-3.imgix.net/uploads/3e6e7d9f-2a34-49d5-9057-6ee2170c3513.jpg"
# "https://victoriaplum-images-3.imgix.net/uploads/b7afe015-4de7-47e9-8b28-ba1c5ddfa0c4.jpg"
# "http://khoof.files.wordpress.com/2013/04/5477793_783e_1024x2000.jpg"
# "https://i2.wp.com/www.freaktography.com/wp-content/uploads/2015/08/Old-bathroom-in-abandoned-house.jpg?fit=1366%2C908"
# "http://www.healthytippingpoint.com/wp-content/uploads/2012/07/IMG_0736_thumb.jpg?x38904"
