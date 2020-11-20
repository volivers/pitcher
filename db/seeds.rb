# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning db...'
Demo.destroy_all

# names = ['New Uber', 'Wow Inc.', 'Unbabel', 'NoRegrets.com', 'Pied Piper', 'New Facebook', 'Tinder Revamp', 'Traveloka', 'WeBank', 'WeWork', 'AI Basis Ventures', 'ShopBack']
names = ['Pied Piper', 'New Facebook', 'Traveloka', 'WeBank']
names_empty = ['Wow Inc.', 'NoRegrets.com']
status = ["Single", "In a relationship", "Married", "It's complicated"]
incomes = ["80.000€", "$50.000", "£65.000"]

puts 'Creating demos with Pitch and Persona'
# 4.times { Demo.create!( name: names.sample, url: "www.pitcher.com/preview/#{(1..10).to_a.sample}", user_id: 1 )}
Demo.create!( name: 'Pied Piper', url: "www.pitcher.com/preview/pied_piper", user_id: 1 )
Pitch.create!( pain: "No available apps on the market to solve this problem.", target: "Everyone who faces this problem.", solution: "App to solve the problem.", demo_id: 157 )
Persona.create!( name: Faker::TvShows::Friends.character, age: (25..30).to_a.sample, bio: Faker::Hipster.paragraph(sentence_count: 3), nationality: Faker::Nation.nationality, location: Faker::Address.city, job: Faker::Job.title, relationship_status: status.sample, income: incomes.sample, demo_id: 157 )
Persona.create!( name: Faker::TvShows::Friends.character, age: (25..30).to_a.sample, bio: Faker::Hipster.paragraph(sentence_count: 3), nationality: Faker::Nation.nationality, location: Faker::Address.city, job: Faker::Job.title, relationship_status: status.sample, income: incomes.sample, demo_id: 157 )

Demo.create!( name: 'New Facebook', url: "www.pitcher.com/preview/new_facebook", user_id: 1 )
Pitch.create!( pain: "No available apps on the market to solve this problem.", target: "Everyone who faces this problem.", solution: "App to solve the problem.", demo_id: 158 )
Persona.create!( name: Faker::TvShows::Friends.character, age: (25..30).to_a.sample, bio: Faker::Hipster.paragraph(sentence_count: 3), nationality: Faker::Nation.nationality, location: Faker::Address.city, job: Faker::Job.title, relationship_status: status.sample, income: incomes.sample, demo_id: 158 )
Persona.create!( name: Faker::TvShows::Friends.character, age: (25..30).to_a.sample, bio: Faker::Hipster.paragraph(sentence_count: 3), nationality: Faker::Nation.nationality, location: Faker::Address.city, job: Faker::Job.title, relationship_status: status.sample, income: incomes.sample, demo_id: 158 )

Demo.create!( name: 'Traveloka', url: "www.pitcher.com/preview/traveloka", user_id: 1 )
Pitch.create!( pain: "No available apps on the market to solve this problem.", target: "Everyone who faces this problem.", solution: "App to solve the problem.", demo_id: 159 )
Persona.create!( name: Faker::TvShows::Friends.character, age: (25..30).to_a.sample, bio: Faker::Hipster.paragraph(sentence_count: 3), nationality: Faker::Nation.nationality, location: Faker::Address.city, job: Faker::Job.title, relationship_status: status.sample, income: incomes.sample, demo_id: 159 )
Persona.create!( name: Faker::TvShows::Friends.character, age: (25..30).to_a.sample, bio: Faker::Hipster.paragraph(sentence_count: 3), nationality: Faker::Nation.nationality, location: Faker::Address.city, job: Faker::Job.title, relationship_status: status.sample, income: incomes.sample, demo_id: 159 )

Demo.create!( name: 'WeBank', url: "www.pitcher.com/preview/webank", user_id: 1 )
Pitch.create!( pain: "No available apps on the market to solve this problem.", target: "Everyone who faces this problem.", solution: "App to solve the problem.", demo_id: 160 )
Persona.create!( name: Faker::TvShows::Friends.character, age: (25..30).to_a.sample, bio: Faker::Hipster.paragraph(sentence_count: 3), nationality: Faker::Nation.nationality, location: Faker::Address.city, job: Faker::Job.title, relationship_status: status.sample, income: incomes.sample, demo_id: 160 )
Persona.create!( name: Faker::TvShows::Friends.character, age: (25..30).to_a.sample, bio: Faker::Hipster.paragraph(sentence_count: 3), nationality: Faker::Nation.nationality, location: Faker::Address.city, job: Faker::Job.title, relationship_status: status.sample, income: incomes.sample, demo_id: 160 )

puts 'Creating empty demos...'
# 2.times { Demo.create!( name: names_empty.sample, url: "www.pitcher.com/preview/#{(1..10).to_a.sample}", user_id: 1 )}
Demo.create!( name: 'Wow Inc.', url: "www.pitcher.com/preview/wow_inc", user_id: 1 )
Demo.create!( name: 'NoRegrets.com', url: "www.pitcher.com/preview/noregrets", user_id: 1 )
