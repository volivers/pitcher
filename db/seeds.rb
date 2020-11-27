# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

puts 'Cleaning db ...'
Demo.destroy_all
User.destroy_all


puts 'Creating Emily user ...'
@emily = User.create!( first_name: 'Emily', last_name: "Burns", email: "emily@gmail.com", password: "123456", account_type: 'basic' )

# Amazona (marketplace)
puts 'Creating Amazona demo ...'

@demo = Demo.create!( name: 'Amazona', url: "www.pitcher.com/preview/amazona", user_id: @emily.id )
Pitch.create!( pain: "No available apps on the market to solve this problem.", target: "Everyone who faces this problem.", solution: "App to solve the problem.", demo: @demo )
@persona = Persona.create!( name: "Jane", age: 36, bio: "Jane is a famous art dealer and a mom of a five year-old. In her spare time, she loves browsing the internet for vintage records and flying to Berlin over the weekend.", nationality: "Danish", location: "Copenhagen, DN", job: "Art Dealer", relationship_status: "In a relationship", income: "85.000€/year", demo: @demo )
@userjourney = Userjourney.create!( name: "Product checkout", persona: @persona, demo: @demo)
Step.create!( standpoint: "in the homepage", viewpoint: "a search bar", actionpoint: "searches for a product", userjourney: @userjourney)
Step.create!( standpoint: "in the search results", viewpoint: "a list of products", actionpoint: "selects one product", userjourney: @userjourney)
Step.create!( standpoint: "in the product", viewpoint: "the product description", actionpoint: "decides to read the product description", userjourney: @userjourney)
Step.create!( standpoint: "in the product", viewpoint: "the reviews section", actionpoint: "decides to read the product reviews", userjourney: @userjourney)
Step.create!( standpoint: "in the product", viewpoint: "the product price", actionpoint: "decides to order the product", userjourney: @userjourney)
Step.create!( standpoint: "in the checkout", viewpoint: "her order details", actionpoint: "pays her order", userjourney: @userjourney)


# Acebook (feed)
puts 'Creating Acebook demo ...'

@demo = Demo.create!( name: 'Acebook', url: "www.pitcher.com/preview/acebook", user_id: @emily.id )
Pitch.create!( pain: "No available apps on the market to solve this problem.", target: "Everyone who faces this problem.", solution: "App to solve the problem.", demo: @demo )
@persona = Persona.create!( name: "Yoshi", age: 17, bio: "Yoshi is a high-school student. Over the weekend, he loves gaming and hanging out with his friends.", nationality: "Japanese", location: "Tokyo, JP", job: "Student", relationship_status: "Single", income: "N/A", demo: @demo )
@userjourney = Userjourney.create!( name: "Reading article", persona: @persona, demo: @demo)
Step.create!( standpoint: "in the homepage", viewpoint: "his post section", actionpoint: "decides to write a new post", userjourney: @userjourney)
Step.create!( standpoint: "in the homepage", viewpoint: "a button to upload an image", actionpoint: "publishes an image with his post", userjourney: @userjourney)
Step.create!( standpoint: "in the homepage", viewpoint: "a list of recent posts from his friends", actionpoint: "selects one post", userjourney: @userjourney)
Step.create!( standpoint: "in the post", viewpoint: "the post details", actionpoint: "decides to read the post details", userjourney: @userjourney)
Step.create!( standpoint: "in the post", viewpoint: "the comments section", actionpoint: "decides to comment the post", userjourney: @userjourney)


# Revoluto (banking)
puts 'Creating Revoluto demo ...'

@demo = Demo.create!( name: 'Revoluto', url: "www.pitcher.com/preview/revoluto", user_id: @emily.id )
Pitch.create!( pain: "No available apps on the market to solve this problem.", target: "Everyone who faces this problem.", solution: "App to solve the problem.", demo: @demo )
@persona = Persona.create!( name: "Steve", age: 25, bio: "Steve is studying Management at the London Business School. In his spare time, he enjoys pub crawling and reading about entrepreneurship.", nationality: "British", location: "London, UK", job: "Student", relationship_status: "It's complicated", income: "£16.000/year", demo: @demo )
@userjourney = Userjourney.create!( name: "Making a payment", persona: @persona, demo: @demo)
Step.create!( standpoint: "in the homepage", viewpoint: "a security pin form", actionpoint: "enters his pin", userjourney: @userjourney)
Step.create!( standpoint: "in his account", viewpoint: "his balance details", actionpoint: "decides to read his balance details", userjourney: @userjourney)
Step.create!( standpoint: "in his account", viewpoint: "the payments section", actionpoint: "decides to make a payment", userjourney: @userjourney)
Step.create!( standpoint: "in the payment", viewpoint: "the payee details form", actionpoint: "enters the payee details to confirm the payment", userjourney: @userjourney)


# Tender (dating)
puts 'Creating Tender demo ...'

@demo = Demo.create!( name: 'Tender', url: "www.pitcher.com/preview/tender", user_id: @emily.id )
Pitch.create!( pain: "No available apps on the market to solve this problem.", target: "Everyone who faces this problem.", solution: "App to solve the problem.", demo: @demo )
@persona = Persona.create!( name: "Nina", age: 27, bio: "Nina is an intern consultant at McKinsey. She is really focused on developing her career and, at some point, wants to build a family with the love of his life.", nationality: "Russian", location: "Paris, FR", job: "Junior Consultant", relationship_status: "Single", income: "50.000€/year", demo: @demo )
Persona.create!( name: "Nicolas", age: 33, bio: "Nicolas founded his first start-up at 21 years-old and ever since then he never stopped aiming higher. On his spare time, he loves finding his next one-night stand.", nationality: "French", location: "Paris, FR", job: "Founder/CEO", relationship_status: "Single", income: "120.000€/year", demo: @demo )
@userjourney = Userjourney.create!( name: "Reading article", persona: @persona, demo: @demo)
Step.create!( standpoint: "in the homepage", viewpoint: "a potential match", actionpoint: "decides to check his profile", userjourney: @userjourney)
Step.create!( standpoint: "in the profile", viewpoint: "the potential match details", actionpoint: "decides to read his details", userjourney: @userjourney)
Step.create!( standpoint: "in the profile", viewpoint: "the potential match details", actionpoint: "swipes right", userjourney: @userjourney)
Step.create!( standpoint: "in the profile", viewpoint: "the potential match details", actionpoint: "decides to read his details", userjourney: @userjourney)
Step.create!( standpoint: "in the profile", viewpoint: "the potential match details", actionpoint: "swipes left", userjourney: @userjourney)


# Modium (blogging)
puts 'Creating Modium demo ...'

@demo = Demo.create!( name: 'Modium', url: "www.pitcher.com/preview/modium", user_id: @emily.id )
Pitch.create!( pain: "No available apps on the market to solve this problem.", target: "Everyone who faces this problem.", solution: "App to solve the problem.", demo: @demo )
Persona.create!( name: "Luca", age: 50, bio: "Luca is a famous plastic surgeon and has 2 kids. In his spare time, he loves fishing and blogging.", nationality: "Italian-American", location: "New York, US", job: "Plastic Surgeon", relationship_status: "Married", income: "250.000€/year", demo: @demo )
@persona = Persona.create!( name: "Darlene", age: 30, bio: "Darlene is a programmer and ethical hacker working for the FBI. She loves fashion blogs and Reddit.", nationality: "American", location: "New York, US", job: "Programmer", relationship_status: "Single", income: "$90.000/year", demo: @demo )
@userjourney = Userjourney.create!( name: "Reading article", persona: @persona, demo: @demo)
Step.create!( standpoint: "in the homepage", viewpoint: "a list of articles trending", actionpoint: "selects one article", userjourney: @userjourney)
Step.create!( standpoint: "in the article", viewpoint: "the article details", actionpoint: "decides to read the article", userjourney: @userjourney)
Step.create!( standpoint: "in the article", viewpoint: "the comments section", actionpoint: "selects one article", userjourney: @userjourney)
Step.create!( standpoint: "in the article", viewpoint: "a list of recommended articles", actionpoint: "selects one article", userjourney: @userjourney)
Step.create!( standpoint: "in the article", viewpoint: "the article options", actionpoint: "decides to bookmark the article", userjourney: @userjourney)