# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Space.destroy_all
Restaurant.destroy_all
Area.destroy_all
User.destroy_all



area_attributes = [
  { name: "Central London", location: "Central London" },
  { name: "North London", location: "North London" },
  { name: "East London", location: "East London" },
  { name: "South London", location: "South London" },
  { name: "West London", location: "West London" }
]

puts "Created 5 areas(regions)"


space_attributes = [
  { name: "Hampstead Heath", location: "West Gate Lodge, Hampstead Lane, Hampstead Heath, London, NW3 7JP", description: "A playground for picnickers, dog-walkers, and nature-lovers alike, keep an eye out for some very special residents such as muntjac deer and parakeets", area: Area.find_by_name("North London")},
  { name: "Dulwich Park", location: "Dulwich Park, College Rd, London SE21", description: "Dulwich Park might be one of the less well-known parks in South London but it’s a treasure to those lucky enough to have discovered its leafy environs. ", area: Area.find_by_name("South London")},
  { name: "Regent's Park", location: "Chester Road Regent's Park, London, NW1 4NR", description: "The Regent’s Park combines large open spaces with tree-lined pathways, formal gardens, and four children’s playgrounds. It has excellent sports facilities, and contains central London’s largest outdoor sports area.", area: Area.find_by_name("Central London")},
  { name: "Battersea Park", location: "Battersea Park, London, SW11 4NJ", description: "Battersea Park is a 200-acre green space at Battersea in the London Borough of Wandsworth in London. It is situated on the south bank of the River Thames opposite Chelsea and was opened in 1858. ", area: Area.find_by_name("South London")},
  { name: "Brockwell Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("South London")}
]

space_attributes.each do |space_attribute|
  space = Space.new(space_attribute)

  file = URI.open("https://source.unsplash.com/featured/?parks")
  space.photo.attach(io: file, filename: "parks", content_type: file.content_type_parse.first)
  space.save!
end

puts "Created 5 spaces"



restaurants_attributes = [
  { name:"Dishoom", location: "5 Stable St, London N1C 4AB", description: "Buzzy destination for Indian street food in Bombay-style digs with vintage decor & upscale touches.", area: Area.find_by_name("North London"), price: "££", cuisine: "Indian", opening_time: 10:00, closing_time: 22:00 },
  { name:"Megan's", location: "27 Circus West Village, London SW11 8NN", description: "Megan’s is open for brunch, lunch, dinner and cocktails every single day!", area: Area.find_by_name("South London"), price: "££", cuisine: "Mediterranean", opening_time: 08:00, closing_time: 20:00 },
  { name:"Levan", location: "Levan, 12-16 Blenheim Grove, London SE15 4QL", description: "Levan serves seasonal and inventive food in a relaxed setting in the heart of peckham, just off Rye Lane, moments from Peckham Overground Station.", area: Area.find_by_name("South London"), price: "££", cuisine: "European", opening_time: 12:00, closing_time: 23:00 },
  { name:"Salon", location: "Salon, 18 Market Row, Brixton, London SW9 8LD", description: "Salon serves seasonal and inventive food in a relaxed setting in Brixton Village market. It’s like fine dining, but without any of the fuss.", area: Area.find_by_name("South London"), price: "£££", cuisine: "European", opening_time: 12:00, closing_time: 23:00 },
  { name:"Slaw", location: "149 Upper St, London N1 1RA", description: "Islington's coolest vegan restaurant.", area: Area.find_by_name("North London"), price: "£", cuisine: "Vegan", opening_time: 10:00, closing_time: 18:00 }
]

restauarant_attributes.each do |restaurant_attribute|
  restaurant = Restaurant.new(restaurant_attribute)

  file = URI.open("https://source.unsplash.com/featured/?food")
  restaurant.photo.attach(io: file, filename: "food", content_type: file.content_type_parse.first)
  restaurant.save!
end

puts "Created 5 restaurants"



