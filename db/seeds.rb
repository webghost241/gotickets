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
  image_url: "https://images.unsplash.com/photo-1565035010268-a3816f98589a?q=80&w=2788&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user1
)

Event.create!(
  title: "Tech Conference",
  description: "Join industry leaders for a full day of tech talks and networking.",
  location: "Moscone Center, San Francisco, CA",
  date: Date.new(2024, 9, 22),
  price: 150.00,
  image_url: "https://images.unsplash.com/photo-1504384764586-bb4cdc1707b0?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user2
)

Event.create!(
  title: "Art Festival",
  description: "Explore the world of contemporary art with exhibitions from renowned artists.",
  location: "Art Institute of Chicago, Chicago, IL",
  date: Date.new(2024, 10, 5),
  price: 30.00,
  image_url: "https://images.unsplash.com/photo-1547826039-bfc35e0f1ea8?q=80&w=2872&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user3
)

Event.create!(
  title: "Summer Party",
  description: "Celebrate the summer with food, drinks, and great company.",
  location: "Santa Monica Beach, Santa Monica, CA",
  date: Date.new(2024, 7, 20),
  price: 20.00,
  image_url: "https://images.unsplash.com/photo-1545960122-23d7d68938a6?q=80&w=2835&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user4
)

Event.create!(
  title: "Photography Workshop",
  description: "Learn the art of photography from professional photographers.",
  location: "Central Park, New York, NY",
  date: Date.new(2024, 8, 10),
  price: 50.00,
  image_url: "https://images.unsplash.com/photo-1554080353-a576cf803bda?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user5
)

Event.create!(
  title: "Startup Meetup",
  description: "Network with fellow entrepreneurs and share your startup ideas.",
  location: "WeWork, San Francisco, CA",
  date: Date.new(2024, 7, 25),
  price: 15.00,
  image_url: "https://images.unsplash.com/photo-1559136555-9303baea8ebd?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user1
)

Event.create!(
  title: "Health Seminar",
  description: "Attend a seminar on the latest health and wellness trends.",
  location: "Hilton Hotel, Miami, FL",
  date: Date.new(2024, 8, 30),
  price: 40.00,
  image_url: "https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user2
)

Event.create!(
  title: "Online Webinar",
  description: "Join our online webinar to learn about digital marketing strategies.",
  location: "Online",
  date: Date.new(2024, 9, 12),
  price: 25.00,
  image_url: "https://images.unsplash.com/photo-1588196749597-9ff075ee6b5b?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user3
)

Event.create!(
  title: "Art Exhibition",
  description: "Discover the latest art pieces from emerging artists around the globe.",
  location: "Los Angeles County Museum of Art, Los Angeles, CA",
  date: Date.new(2024, 10, 18),
  price: 35.00,
  image_url: "https://images.unsplash.com/photo-1563000215-e31a8ddcb2d0?q=80&w=2912&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user4
)

Event.create!(
  title: "Cooking Competition",
  description: "Show off your cooking skills and compete against the best chefs.",
  location: "Grand Hyatt, Seattle, WA",
  date: Date.new(2024, 7, 29),
  price: 60.00,
  image_url: "https://images.unsplash.com/photo-1466637574441-749b8f19452f?q=80&w=2428&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user5
)

# Additional 10 events
Event.create!(
  title: "Jazz Festival",
  description: "Experience the best jazz performances from top musicians.",
  location: "New Orleans Jazz & Heritage Festival, New Orleans, LA",
  date: Date.new(2024, 8, 25),
  price: 70.00,
  image_url: "https://images.unsplash.com/flagged/photo-1569231290377-072234d3ee57?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user1
)

Event.create!(
  title: "Book Fair",
  description: "Explore a wide range of books from different genres and authors.",
  location: "Boston Convention and Exhibition Center, Boston, MA",
  date: Date.new(2024, 9, 5),
  price: 10.00,
  image_url: "https://images.unsplash.com/photo-1631888720622-4746b895af14?q=80&w=2785&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user2
)

Event.create!(
  title: "Wine Tasting",
  description: "Taste a variety of wines from local and international vineyards.",
  location: "Napa Valley, CA",
  date: Date.new(2024, 10, 1),
  price: 80.00,
  image_url: "https://images.unsplash.com/photo-1598306442928-4d90f32c6866?q=80&w=2835&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user3
)

Event.create!(
  title: "Film Premiere",
  description: "Attend the premiere of the latest blockbuster movie.",
  location: "Grauman's Chinese Theatre, Los Angeles, CA",
  date: Date.new(2024, 7, 23),
  price: 45.00,
  image_url: "https://images.unsplash.com/photo-1717915604557-94283edbcc1b?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user4
)

Event.create!(
  title: "Fashion Show",
  description: "See the latest trends in fashion from top designers.",
  location: "New York Fashion Week, New York, NY",
  date: Date.new(2024, 9, 10),
  price: 100.00,
  image_url: "https://images.unsplash.com/photo-1568251478083-32c27296c2c2?q=80&w=2886&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user5
)

Event.create!(
  title: "Comedy Night",
  description: "Enjoy a night of laughs with stand-up performances by famous comedians.",
  location: "The Comedy Store, Los Angeles, CA",
  date: Date.new(2024, 8, 20),
  price: 30.00,
  image_url: "https://images.unsplash.com/photo-1543584756-8f40a802e14f?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user1
)

Event.create!(
  title: "Yoga Retreat",
  description: "Relax and rejuvenate with a weekend of yoga and meditation.",
  location: "Sedona, AZ",
  date: Date.new(2024, 9, 15),
  price: 120.00,
  image_url: "https://images.unsplash.com/photo-1545205597-3d9d02c29597?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user2
)

Event.create!(
  title: "Marathon",
  description: "Run a full marathon and challenge yourself to the limit.",
  location: "Central Park, New York, NY",
  date: Date.new(2024, 10, 12),
  price: 50.00,
  image_url: "https://images.unsplash.com/photo-1596727362302-b8d891c42ab8?q=80&w=2885&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user3
)

Event.create!(
  title: "Theater Play",
  description: "Watch a captivating play performed by talented actors.",
  location: "Broadway, New York, NY",
  date: Date.new(2024, 7, 18),
  price: 65.00,
  image_url: "https://images.unsplash.com/photo-1576724196831-c3469e6a67ec?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user4
)

Event.create!(
  title: "Science Fair",
  description: "Explore innovative projects and experiments at the science fair.",
  location: "Silicon Valley, CA",
  date: Date.new(2024, 8, 27),
  price: 20.00,
  image_url: "https://images.unsplash.com/photo-1581092333322-31d2fd38a35e?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  user: user5
)

puts "Created #{User.count} users and #{Event.count} events!"