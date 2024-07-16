# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# require 'faker'

# # Predefined image URLs
# image_urls = [
#   "https://source.unsplash.com/800x600/?concert",
#   "https://source.unsplash.com/800x600/?conference",
#   "https://source.unsplash.com/800x600/?festival",
#   "https://source.unsplash.com/800x600/?party",
#   "https://source.unsplash.com/800x600/?workshop",
#   "https://source.unsplash.com/800x600/?meetup",
#   "https://source.unsplash.com/800x600/?seminar",
#   "https://source.unsplash.com/800x600/?webinar",
#   "https://source.unsplash.com/800x600/?exhibition",
#   "https://source.unsplash.com/800x600/?competition"
# ]

# # Create some users
# 5.times do
#   User.create!(
#     email: Faker::Internet.email,
#     password: 'password',
#     password_confirmation: 'password'
#   )
# end

# users = User.all

# # Create 20 events and associate them with random users
# 20.times do
#   Event.create!(
#     title: Faker::Lorem.sentence(word_count: 3),
#     description: Faker::Lorem.paragraph(sentence_count: 5),
#     location: Faker::Address.full_address,
#     date: Faker::Date.forward(days: 30),
#     price: Faker::Commerce.price(range: 10..100.0),
#     image_url: image_urls.sample, # Use a predefined image URL
#     user: users.sample # Associate event with a random user
#   )
# end

# puts "Created #{User.count} users and #{Event.count} events!"
# 


# db/seeds.rb

# Create some users
user1 = User.create!(email: 'user1@example.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(email: 'user2@example.com', password: 'password', password_confirmation: 'password')
user3 = User.create!(email: 'user3@example.com', password: 'password', password_confirmation: 'password')
user4 = User.create!(email: 'user4@example.com', password: 'password', password_confirmation: 'password')
user5 = User.create!(email: 'user5@example.com', password: 'password', password_confirmation: 'password')

# Manual event creation
Event.create!(
  title: "Rock Concert",
  description: "Enjoy an amazing night with live performances from the best rock bands.",
  location: "Madison Square Garden, New York, NY",
  date: Date.new(2024, 8, 15),
  price: 75.00,
  image_url: "https://source.unsplash.com/800x600/?concert",
  user: user1
)

Event.create!(
  title: "Tech Conference",
  description: "Join industry leaders for a full day of tech talks and networking.",
  location: "Moscone Center, San Francisco, CA",
  date: Date.new(2024, 9, 22),
  price: 150.00,
  image_url: "https://source.unsplash.com/800x600/?conference",
  user: user2
)

Event.create!(
  title: "Art Festival",
  description: "Explore the world of contemporary art with exhibitions from renowned artists.",
  location: "Art Institute of Chicago, Chicago, IL",
  date: Date.new(2024, 10, 5),
  price: 30.00,
  image_url: "https://source.unsplash.com/800x600/?festival",
  user: user3
)

Event.create!(
  title: "Summer Party",
  description: "Celebrate the summer with food, drinks, and great company.",
  location: "Santa Monica Beach, Santa Monica, CA",
  date: Date.new(2024, 7, 20),
  price: 20.00,
  image_url: "https://source.unsplash.com/800x600/?party",
  user: user4
)

Event.create!(
  title: "Photography Workshop",
  description: "Learn the art of photography from professional photographers.",
  location: "Central Park, New York, NY",
  date: Date.new(2024, 8, 10),
  price: 50.00,
  image_url: "https://source.unsplash.com/800x600/?workshop",
  user: user5
)

Event.create!(
  title: "Startup Meetup",
  description: "Network with fellow entrepreneurs and share your startup ideas.",
  location: "WeWork, San Francisco, CA",
  date: Date.new(2024, 7, 25),
  price: 15.00,
  image_url: "https://source.unsplash.com/800x600/?meetup",
  user: user1
)

Event.create!(
  title: "Health Seminar",
  description: "Attend a seminar on the latest health and wellness trends.",
  location: "Hilton Hotel, Miami, FL",
  date: Date.new(2024, 8, 30),
  price: 40.00,
  image_url: "https://source.unsplash.com/800x600/?seminar",
  user: user2
)

Event.create!(
  title: "Online Webinar",
  description: "Join our online webinar to learn about digital marketing strategies.",
  location: "Online",
  date: Date.new(2024, 9, 12),
  price: 25.00,
  image_url: "https://source.unsplash.com/800x600/?webinar",
  user: user3
)

Event.create!(
  title: "Art Exhibition",
  description: "Discover the latest art pieces from emerging artists around the globe.",
  location: "Los Angeles County Museum of Art, Los Angeles, CA",
  date: Date.new(2024, 10, 18),
  price: 35.00,
  image_url: "https://source.unsplash.com/800x600/?exhibition",
  user: user4
)

Event.create!(
  title: "Cooking Competition",
  description: "Show off your cooking skills and compete against the best chefs.",
  location: "Grand Hyatt, Seattle, WA",
  date: Date.new(2024, 7, 29),
  price: 60.00,
  image_url: "https://source.unsplash.com/800x600/?competition",
  user: user5
)

# Additional 10 events
Event.create!(
  title: "Jazz Festival",
  description: "Experience the best jazz performances from top musicians.",
  location: "New Orleans Jazz & Heritage Festival, New Orleans, LA",
  date: Date.new(2024, 8, 25),
  price: 70.00,
  image_url: "https://source.unsplash.com/800x600/?jazz",
  user: user1
)

Event.create!(
  title: "Book Fair",
  description: "Explore a wide range of books from different genres and authors.",
  location: "Boston Convention and Exhibition Center, Boston, MA",
  date: Date.new(2024, 9, 5),
  price: 10.00,
  image_url: "https://source.unsplash.com/800x600/?bookfair",
  user: user2
)

Event.create!(
  title: "Wine Tasting",
  description: "Taste a variety of wines from local and international vineyards.",
  location: "Napa Valley, CA",
  date: Date.new(2024, 10, 1),
  price: 80.00,
  image_url: "https://source.unsplash.com/800x600/?winetasting",
  user: user3
)

Event.create!(
  title: "Film Premiere",
  description: "Attend the premiere of the latest blockbuster movie.",
  location: "Grauman's Chinese Theatre, Los Angeles, CA",
  date: Date.new(2024, 7, 23),
  price: 45.00,
  image_url: "https://source.unsplash.com/800x600/?filmpremiere",
  user: user4
)

Event.create!(
  title: "Fashion Show",
  description: "See the latest trends in fashion from top designers.",
  location: "New York Fashion Week, New York, NY",
  date: Date.new(2024, 9, 10),
  price: 100.00,
  image_url: "https://source.unsplash.com/800x600/?fashionshow",
  user: user5
)

Event.create!(
  title: "Comedy Night",
  description: "Enjoy a night of laughs with stand-up performances by famous comedians.",
  location: "The Comedy Store, Los Angeles, CA",
  date: Date.new(2024, 8, 20),
  price: 30.00,
  image_url: "https://source.unsplash.com/800x600/?comedy",
  user: user1
)

Event.create!(
  title: "Yoga Retreat",
  description: "Relax and rejuvenate with a weekend of yoga and meditation.",
  location: "Sedona, AZ",
  date: Date.new(2024, 9, 15),
  price: 120.00,
  image_url: "https://source.unsplash.com/800x600/?yoga",
  user: user2
)

Event.create!(
  title: "Marathon",
  description: "Run a full marathon and challenge yourself to the limit.",
  location: "Central Park, New York, NY",
  date: Date.new(2024, 10, 12),
  price: 50.00,
  image_url: "https://source.unsplash.com/800x600/?marathon",
  user: user3
)

Event.create!(
  title: "Theater Play",
  description: "Watch a captivating play performed by talented actors.",
  location: "Broadway, New York, NY",
  date: Date.new(2024, 7, 18),
  price: 65.00,
  image_url: "https://source.unsplash.com/800x600/?theater",
  user: user4
)

Event.create!(
  title: "Science Fair",
  description: "Explore innovative projects and experiments at the science fair.",
  location: "Silicon Valley, CA",
  date: Date.new(2024, 8, 27),
  price: 20.00,
  image_url: "https://source.unsplash.com/800x600/?sciencefair",
  user: user5
)

puts "Created #{User.count} users and #{Event.count} events!"