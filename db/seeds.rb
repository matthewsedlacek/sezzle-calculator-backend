# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

message_1 = Message.create(message_text: "2 + 2 = 4", username: Faker::Name.first_name)
message_2 = Message.create(message_text: "9 + 1 = 10", username: Faker::Name.first_name)
message_3 = Message.create(message_text: "1000 * 2 = 2000", username: Faker::Name.first_name)
message_4 = Message.create(message_text: "7 - 7 = 0", username: Faker::Name.first_name)
message_5 = Message.create(message_text: "5 / 5 = 1", username: Faker::Name.first_name)
message_6 = Message.create(message_text: "(9 - 2) * 7 = 49", username: Faker::Name.first_name)
message_7 = Message.create(message_text: "1 + 2 - 2 = 1", username: Faker::Name.first_name)
message_8 = Message.create(message_text: "4 * 4 = 16", username: Faker::Name.first_name)
message_9 = Message.create(message_text: "1 + 2 = 3", username: Faker::Name.first_name)
message_10 = Message.create(message_text: "2 * 3 = 6", username: Faker::Name.first_name)