# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create( name: "Abdoul", age: 31, gender: "Male", fav_sport: "Basketball", bio: "I've been playing basketball for almost 20 years and the older I get the better I get lol", username: "Abdoul123", password_digest: "PW123456")

user2 = User.create(name: "Ibrahim", age: 17, gender: "Male", fav_sport: "Soccer", bio: "I've been playing soccer for almost 10 years and the older I get the better I get lol", username: "Ibrahim123", password_digest: "PW123456")

user3 = User.create(name: "Sulaiman", age: 11, gender: "Male", fav_sport: "Baseball", bio: "I've been playing baseball for almost 10 years and the older I get the better I get lol", username: "Sulaiman123", password_digest: "PW123456")

user4 = User.create(name: "Mohamed", age: 13, gender: "Male", fav_sport: "soccer", bio: "I've been playing soccer for almost 10 years and the older I get the better I get lol", username: "Mohamed123", password_digest: "PW123456")

user5 = User.create(name: "Ahmad", age: 28, gender: "Male", fav_sport: "Basketball", bio: "I've been playing basketball for almost 20 years and the older I get the better I get lol", username: "Ahmad123", password_digest: "PW123456")

user6 = User.create(name: "Aicha", age: 21, gender: "female", fav_sport: "Volleyball", bio: "I've been playing Volleyball for almost 10 years and the older I get the better I get lol", username: "Aicha123", password_digest: "PW123456")

user7 = User.create(name: "Abdullah", age: 7, gender: "Male", fav_sport: "Soccer", bio: "I've been playing Soccer for almost 2 years and the older I get the better I get lol", username: "Abdullah123", password_digest: "PW123456")

user8 = User.create(name: "Yusuf", age: 6, gender: "Male", fav_sport: "Soccer", bio: "I've been playing basketball for almost 2 years and the older I get the better I get lol", username: "Yusuf123", password_digest: "PW123456")

meetup1 = Meetup.create(category: "Basketball", name: "Ball Is Life", location: "West 4th", time: "Tuesday at 17:00", description: "We're going to hoop till we drop", user_id: user1.id)

meetup2 = Meetup.create(category: "Football", name: "Touchdown", location: "Prospect Park", time: "Sunday at 10:00", description: "We're going to ball till we drop", user_id: user2.id)

meetup3 = Meetup.create(category: "Baseball", name: "HomeRun", location: "Yankee Stadium", time: "Saturday at 15:00", description: "We're going to ball till the field feels it", user_id: user3.id)

meetup4 = Meetup.create(category: "Soccer", name: "Goooaal", location: "Pier 1", time: "Monday at 9:00", description: "We're going to kick it till we drop", user_id: user4.id)

meetup5 = Meetup.create(category: "Volleyball", name: "Serrrrved", location: "Lehman College", time: "Friday at 6:00", description: "We're going to ball till we can't no more", user_id: user5.id)
