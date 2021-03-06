# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Plan.destroy_all
Restaurant.destroy_all
Space.destroy_all
Area.destroy_all
User.destroy_all


user = User.create!(email: "timw@gmail.com", password: "123456", first_name: "Tim")

user2 = User.create!(email: "hebam@gmail.com", password: "123456", first_name: "Heba")
file2 = URI.open('https://res.cloudinary.com/dmgunn4aj/image/upload/v1623851240/heba_mdy1ri.jpg')
user2.photo.attach(io: file2, filename: 'heba_mdy1ri.jpg', content_type: 'image/png')
user2.save

user3 = User.create!(email: "minjeong@gmail.com", password: "123456", first_name: "Minjeong")
file3 = URI.open('https://res.cloudinary.com/dmgunn4aj/image/upload/v1623859045/minjeong_rfs8u1.jpg')
user3.photo.attach(io: file3, filename: 'minjeong_rfs8u1.jpg', content_type: 'image/png')
user3.save

user4 = User.create!(email: "chloe@gmail.com", password: "123456", first_name: "Chloé")
file4 = URI.open('https://res.cloudinary.com/dmgunn4aj/image/upload/v1623851241/chloe_oznl4b.jpg')
user4.photo.attach(io: file4, filename: 'chloe_oznl4b.jpg', content_type: 'image/jpg')
user4.save

user5 = User.create!(email: "kiki@gmail.com", password: "123456", first_name: "Kieryn")
file5 = URI.open('https://res.cloudinary.com/dmgunn4aj/image/upload/v1623859044/kiki_bvmjvt.jpg')
user5.photo.attach(io: file5, filename: 'kiki_bvmjvt.jpg', content_type: 'image/jpg')
user5.save

user6 = User.create!(email: "don@gmail.com", password: "123456", first_name: "Don")
file6 = URI.open('https://res.cloudinary.com/dmgunn4aj/image/upload/v1623859217/don_kaa0v0.png')
user6.photo.attach(io: file6, filename: 'don_kaa0v0.png', content_type: 'image/jpg')
user6.save

puts "Created a user with email: heba@gmail.com and password: 123456"


area_attributes = [
  { name: "Central London", location: "Central London" },
  { name: "North London", location: "North London" },
  { name: "East London", location: "East London" },
  { name: "South London", location: "South London" },
  { name: "West London", location: "West London" }
]

area_attributes.each do |area_attribute|
  area = Area.new(area_attribute)
  area.save!
end

puts "Created 5 areas(regions)"



space_attributes = [
  { name: "Hampstead Heath", location: "West Gate Lodge, Hampstead Lane, Hampstead Heath, London, NW3 7JP", description: "A playground for picnickers, dog-walkers, and nature-lovers alike, keep an eye out for some very special residents such as muntjac deer and parakeets", area: Area.find_by_name("North London")},
  { name: "Dulwich Park", location: "Dulwich Park, College Rd, London SE21", description: "Dulwich Park might be one of the less well-known parks in South London but it’s a treasure to those lucky enough to have discovered its leafy environs. ", area: Area.find_by_name("South London")},
  { name: "Regent's Park", location: "Chester Road Regent's Park, London, NW1 4NR", description: "The Regent’s Park combines large open spaces with tree-lined pathways, formal gardens, and four children’s playgrounds. It has excellent sports facilities, and contains central London’s largest outdoor sports area.", area: Area.find_by_name("Central London")},
  { name: "Battersea Park", location: "Battersea Park, London, SW11 4NJ", description: "Battersea Park is a 200-acre green space at Battersea in the London Borough of Wandsworth in London. It is situated on the south bank of the River Thames opposite Chelsea and was opened in 1858. ", area: Area.find_by_name("South London")},
  { name: "Brockwell Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("South London")},
  { name: "St James's Park", location: "St James's Park, London SW1A 2BJ", description: "St James's Park is a 23-hectare park in the City of Westminster, central London.", area: Area.find_by_name("Central London")},
  { name: "Richmond Park", location: "Richmond Park, London TW10 5HS", description: "Richmond Park, in the London Borough of Richmond upon Thames, was created by Charles I in the 17th century as a deer park. The largest of London's Royal Parks, it is of national and international importance for wildlife conservation. ", area: Area.find_by_name("West London")},
  { name: "Bushy Park", location: "Bushy Park, Hampton Court Rd, Hampton TW12 2EJ", description: "Huge area of woods and grasslands, home to red and fallow deer, with water garden and fountain.", area: Area.find_by_name("West London")},
  { name: "Hyde Park", location: "Hyde Park London", description: "Huge green space, home to Diana Memorial Fountain, with boating and swimming in the Serpentine lake.", area: Area.find_by_name("Central London")},
  { name: "Kensington Gardens", location: "Kensington Gardens, London W2 2UH", description: "Kensington Gardens, once the private gardens of Kensington Palace, are among the Royal Parks of London. The gardens are shared by the City of Westminster and the Royal Borough of Kensington and Chelsea and sit immediately to the west of Hyde Park, in western central London. The gardens cover an area of 107 hectares.", area: Area.find_by_name("Central London")},
  { name: "Greenwich Park", location: "Greenwich Park, London SE10 8QY", description: "Large park with expansive views, home to the Royal Observatory, Maritime Museum and Meridian Line.", area: Area.find_by_name("South London")},
  { name: "Green Park", location: "Green Park, London SW1A 1AA", description: "Spacious park with deckchair-scattered lawns, mature trees and views of regal local neighbours.", area: Area.find_by_name("Central London")},
  { name: "Russell Square", location: "Russell Square, London WC1B 4JA", description: "Large Georgian square with statue of founder, the Duke of Bedford, plaza and water feature.", area: Area.find_by_name("Central London")},
  { name: "Lincoln's Inn Fields", location: "Lincoln's Inn Fields, London WC2A 3TL", description: "Expansive enclosed square, designed by Inigo Jones in the 17th century, with lawn and tennis courts.", area: Area.find_by_name("Central London")},
  { name: "Soho Square", location: "Soho Square, London W1D 3QP", description: "Green escape from the hustle of central London - a shady space moments from a busy nightlife area.", area: Area.find_by_name("Central London")},
  { name: "Victoria Park", location: "Grove Rd, London E3 5TB", description: "A playground for picnickers, dog-walkers, and nature-lovers alike, keep an eye out for some very special residents such as muntjac deer and parakeets", area: Area.find_by_name("North London")},
  { name: "Crystal Palace Park", location: "Dulwich Park, College Rd, London SE21", description: "Dulwich Park might be one of the less well-known parks in South London but it’s a treasure to those lucky enough to have discovered its leafy environs. ", area: Area.find_by_name("South London")},
  { name: "Alexandra Park", location: "Chester Road Regent's Park, London, NW1 4NR", description: "Lakes and fountains in 86 hectares of Victorian greenery in the heart of East London.", area: Area.find_by_name("East London")},
  { name: "Thames Chase", location: "Upminster RM14 3NS", description: "Gorgeous place, lovely walks with places to sit. Nice playground for children too.", area: Area.find_by_name("East London")},
  { name: "Epping Forest", location: "The Warren, Loughton, Essex, IG10 4RW", description: "Epping Forest is a local government district in Essex, England. Situated in the west of the county, bordering northeastern Greater London, it is named after, and contains a large part of, Epping Forest.", area: Area.find_by_name("South London")},
  { name: "Wimbledon Common", location: "Windmill Rd, Wimbledon Common, London SW19 5NR", description: "Riding, walking trails, ponds and sports pitches on vast expanse of grassland and woodland.", area: Area.find_by_name("West London")},
  { name: "Walthamstow Wetlands", location: "2 Forest Rd, London N17 9NH", description: "2 Forest Rd, London N17 9NH ", area: Area.find_by_name("North London")},
  { name: "Mitcham Common", location: "Croydon Rd, Mitcham CR4 1HT", description: "Large park with open grassy space, wooded areas & ponds, plus various trails for walking & running.", area: Area.find_by_name("South London")},
  { name: "Trent Park", location: "Bramley Rd, London EN4 0PS", description: "Vast parkland of woodland and lakes, once a royal hunting ground, now used for leisure activities.", area: Area.find_by_name("East London")},
  { name: "Clapham Common", location: "Clapham Common, Windmill Dr, London SW4 9DE", description: "Large expanse of parkland with 3 ponds, and the oldest and largest bandstand in Greater London.", area: Area.find_by_name("South London")},
  { name: "Wandsworth Common", location: "Trinity Rd, London SW18 3RT", description: "Large area of common parkland with gardens, sports pitches, a lake and a children's playground.", area: Area.find_by_name("South London")},
  { name: "Tooting Bec Common", location: "45 Tooting Bec Gardens, London SW16 1RF", description: "Large park with many facilities, including a pool, a cafe, a playground, paths & tennis courts.", area: Area.find_by_name("South London")},
  { name: "South Norwood Country Park", location: "193 Albert Rd, London BR3 4BT", description: "Large park with meadows, wetlands & a lake, plus a bike path, playground & pitch-&-putt golf.", area: Area.find_by_name("South London")},
  { name: "Grosvenor Square", location: "London W1K 6LD", description: "Grosvenor Square is a large garden square in the Mayfair district of London.", area: Area.find_by_name("Central London")},
  { name: "Whitehall Gardens", location: "Victoria Embankment, London SW1A 2HE", description: "Historic garden in the shadow of the landmark Horse Guard building, with flowers, statues and paths.", area: Area.find_by_name("Central London")},
  { name: "Berkeley Square Gardens", location: "45 Berkeley Square, London W1J 5AS", description: "An aristocratic quadrangle in central Mayfair that once rivalled Grosvenor Square as the most fashionable spot in the West End.", area: Area.find_by_name("Central London")},
  { name: "St Dunstan in the East", location: "St Dunstan's Hill, London EC3R 5DD", description: "City garden amongst the ruins of a grade I listed church with a tower & steeple by Christopher Wren.", area: Area.find_by_name("East London")},
  { name: "Chelsea Embankment Gardens", location: "37 Cheyne Walk, London SW3 5TRJ", description: "Embankment Gardens are situated alongside alongside the busy Chelsea Embankment. The gardens contain spring and summer bedding, trees, shrubs and grass areas.", area: Area.find_by_name("West London")},
  { name: "Parliament Square Garden", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Parliament Square is a square at the northwest end of the Palace of Westminster in the City of Westminster in central London. It features a large open green area in the centre with trees to its west, and it contains twelve statues of statesmen and other notable individuals.", area: Area.find_by_name("Central London")},
  { name: "Victoria Tower Gardens", location: "Millbank, London SW1P 3JA", description: "Victoria Tower Gardens is a public park along the north bank of the River Thames in London. As its name suggests, is adjacent to the Victoria Tower, the south-western corner of the Palace of Westminster.", area: Area.find_by_name("Central London")},
  { name: "Victoria Embankment Gardens", location: "Villiers St, London WC2N 6NS", description: "The Victoria Embankment Gardens are a series of gardens on the north side of the River Thames between Blackfriars Bridge and Westminster Bridge in London.", area: Area.find_by_name("Central London")},
  { name: "Postman’s Park", location: "King Edward St, London EC1A 7BT", description: "Postman's Park is a public garden in central London, a short distance north of St Paul's Cathedral. Bordered by Little Britain, Aldersgate Street, St. Martin's Le Grand, King Edward Street, and the site of the former headquarters of the General Post Office, it is one of the largest open spaces in the City of London.", area: Area.find_by_name("Central London")},
  { name: "Finsbury Park", location: "Finsbury Park", description: "Finsbury Park is a busy multicultural neighbourhood centred on its namesake park, with a lake, walking paths, an outdoor gym, and music festivals in summer.", area: Area.find_by_name("North London")},
  { name: "Paddington Recreation Ground", location: "Randolph Ave, London W9 1PD", description: "This 27-acre park features a cafe & a gym, plus tennis, cricket & other outdoor sports.", area: Area.find_by_name("North London")},
  { name: "Sunny Hill Park", location: "The Pavilion, Sunnyhill Park, London NW4 4XA", description: "Sunny Hill Park is in Hendon, in the London Borough of Barnet, England. It is a large hilly park, 22 hectares, mainly grassed, which has extensive views to the north and the west. ", area: Area.find_by_name("North London")},
  { name: "Queen’s Park", location: "Queen's Park, London", description: "Queen’s Park is a family-friendly residential area with quiet streets of Victorian and Edwardian houses surrounding the park of the same name, home to a bandstand, flower gardens, and a playground with a paddling pool.", area: Area.find_by_name("North London")},
  { name: "Gladstone Park", location: "52 Mulgrave Rd, London NW10 1BT", description: "Park with formal gardens, sports and play areas, duck pond, art gallery and cafe, plus city views.", area: Area.find_by_name("North London")},
  { name: "Stanmore Country Park", location: "Kerry Ave, Stanmore HA7 4NN", description: "Stanmore Country Park is a 30.7 hectare public park, Local Nature Reserve and Site of Metropolitan Importance for Nature Conservation in Stanmore in the London Borough of Harrow.", area: Area.find_by_name("North London")},
  { name: "Waterlow Park", location: "Highgate Hill, London N6 5HD", description: "Waterlow Park is a 26-acre park in the south east of Highgate Village, in north London.", area: Area.find_by_name("North London")},
  { name: "Fryent Country Park", location: "106 Fryent Way, London NW9 9SE", description: "It covers 103 hectares of rolling fields and small woods.", area: Area.find_by_name("North London")},
  { name: "Canons Park", location: "Canons Park, Edgware, London", description: "Canons Park is a former country estate which partially survives today as a public park, historically in what was called the parish of Little Stanmore.", area: Area.find_by_name("North London")},
  { name: "Primrose Hill", location: "Primrose Hill Road, Camden, London, NW3 3DE", description: "Primrose Hill is a compact, villagelike area of grand Victorian terraces and pastel-coloured Regency townhouses. Its namesake hilltop park has panoramic views over Regent’s Park and the city beyond. ", area: Area.find_by_name("Central London")},
  { name: "Grovelands Park", location: "44 Queen Elizabeth's Dr, London N14 6RD", description: "Grovelands Park is a public park in Southgate and Winchmore Hill, London, that originated as a private estate. ", area: Area.find_by_name("North London")},
  { name: "Barnard Park", location: "Copenhagen St, London N1 0ER", description: "Spacious city park featuring a playground with water play area as well as an adventure playground.", area: Area.find_by_name("North London")},
  { name: "Parkland Walk", location: "Florence Road, London N4 3EY", description: "The Parkland Walk is a 3.1-mile linear green pedestrian and cycle route in London, which follows the course of the railway line that used to run between Finsbury Park and Alexandra Palace, through Stroud Green, Crouch End, Highgate and Muswell Hill.", area: Area.find_by_name("South London")},
  { name: "Vauxhall Park", location: "Vauxhall Park, Lawn Lane, London SW8 1JY", description: "Vauxhall Park is a Green Flag Award-winning municipal park in Vauxhall, South London, run by Lambeth Council.", area: Area.find_by_name("South London")},
  { name: "Barnes Common", location: "Barnes, SW13 0AA", description: "Barnes Common is common land in the south east of Barnes, London, England, adjoining Putney Lower Common to the east and bounded to the south by the Upper Richmond Road. ", area: Area.find_by_name("West London")},
  { name: "Putney Heath", location: "Putney Heath, London SW15 3SU", description: "Quintessentially English green common land with open heath & wooded glades perfect for picnics.", area: Area.find_by_name("South London")},
  { name: "Morden Park", location: "Lower Morden Ln, Morden SM4, UK", description: "Sprawling city park with a historic rose garden, creekside trails, a play area & pet-friendly space.", area: Area.find_by_name("South London")},
  { name: "Blackheath", location: "Blackheath Park, Greenwich, London, SE3 9SJ", description: "Blackheath is a proper little gem of a London village. You may have guessed from the name that it's got a heath, but it also features a great community and popular local restaurants and cafes that serve really, really good home made and fresh food.", area: Area.find_by_name("South London")},
  { name: "Lavender Pond Nature Park", location: "Lavender Pond & Nature Park Lavender Pumphouse, Lavender Rd, London SE16 5DZ", description: "Lavender Pond is a 2.5 acre local nature reserve in Rotherhithe in the London Borough of Southwark. It is owned by Southwark Council and managed by The Conservation Volunteers. The nature reserve has an area of woodland as well as the pond.", area: Area.find_by_name("South London")},
  { name: "Streatham Common", location: "Streatham Common, Streatham Common S, London SW16 3BX", description: "Streatham Common is a large open space on the southern edge of Streatham in the London Borough of Lambeth. The shallow sloping lower half of the common is mostly mowed grass, and the upper half is mostly woodland with some small areas of gorse scrub and acid grassland.", area: Area.find_by_name("South London")},
  { name: "Beckenham Place Park", location: "Beckenham Hill Rd, Beckenham BR3 5BS", description: "Beckenham Place Park is a large park located near Beckenham in the London Borough of Lewisham. It lies close to the border with London Borough of Bromley. The Palladian-style mansion that gave the park its name now serves as a community centre and café.", area: Area.find_by_name("South London")},
  { name: "Belair Park", location: "Gallery Road, London SE21", description: "Belair Park is a park located in the West Dulwich part of the London Borough of Southwark, southeast London, England. The park grounds once belonged to Belair House, a country villa built in Adam style that is now a Grade II listed building.", area: Area.find_by_name("South London")},
  { name: "Southwark Park", location: "Gomm Road, London SE16 2TX", description: "Southwark Park first opened its gates to the public in 1869, and was one of the earliest parks to be opened by the Metropolitan Board of Works.", area: Area.find_by_name("South London")},
  { name: "Kew Gardens", location: "Richmond, London", description: "Kew Gardens is a botanic garden in southwest London that houses the largest and most diverse botanical and mycological collections in the world.", area: Area.find_by_name("South London")},
  { name: "Burgess Park", location: "Albany Rd, London SE5 0AL", description: "A lake, sports facilities, gardens and a cafe, all set in spacious parklands created in the 1940s.", area: Area.find_by_name("South London")},
  { name: "Ham Lands", location: "Richmond TW1 3DY", description: "Ham Lands is a 72-hectare Local Nature Reserve and Site of Metropolitan Importance for Nature Conservation in Ham in the London Borough of Richmond upon Thames and the Royal Borough of Kingston upon Thames. The site is a large area of grassland and scrub bordering the River Thames.", area: Area.find_by_name("South London")},
  { name: "King George's Park", location: "Mapleton Rd, London SW18 2GJ", description: "King George's Park is a main park spanning Wandsworth and Southfields, South London.", area: Area.find_by_name("South London")},
  { name: "Stave Hill Ecological Park", location: "Timber Pond Rd, London SE16 6AX", description: "Stave Hill Ecological Park, in south east London, is a quiet spot in innner London. With lots of plants and wildlife around.", area: Area.find_by_name("South London")},
  { name: "Russia Dock Woodland", location: "Somerford Way, London SE16 6QW", description: "Russia Dock Woodland is a long narrow park in Rotherhithe, London, created by the infilling of one of the former Surrey Commercial Docks. ", area: Area.find_by_name("South London")},
  { name: "Vauxhall Pleasure Gardens", location: "Vauxhall Pleasure Gardens (Spring Gardens, Vauxhall Walk, London SE11 5HL", description: "Vauxhall Gardens is a public park in Kennington, London, England, on the south bank of the River Thames.", area: Area.find_by_name("South London")},
  { name: "Jubilee Gardens", location: "Belvedere Rd, London SE1 7PG", description: "Jubilee Gardens is a public park on the South Bank in the London Borough of Lambeth. Created in 1977 to mark the Silver Jubilee of Elizabeth II, the site was formerly used for the Dome of Discovery and the adjacent Skylon during the Festival of Britain in 1951.", area: Area.find_by_name("Central London")},

  { name: "Kennington Park", location: "Kennington Park Rd, London SE11 4BE", description: "Kennington Park is a public park in Kennington, south London and lies between Kennington Park Road and St. Agnes Place.", area: Area.find_by_name("South London")},
  { name: "Deptford Park", location: "23 Scawen Rd, London SE8 5AE", description: "Deptford Park is a public park in Deptford south-east London. It is owned by London Borough of Lewisham. The closest local stations are Deptford and Surrey Quays.", area: Area.find_by_name("South London")},
  { name: "Victoria Park", location: "Grove Road, London E3 5TB", description: "Victoria Park is a park in the London Borough of Tower Hamlets in East London, England. It is the largest park in Tower Hamlets and one of London's most visited green spaces with approximately 9 million visitors every year. ", area: Area.find_by_name("North London")},
  { name: "Wanstead Flats", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Clapton Pond", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Weavers Fields", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Bethnal Green Gardens", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "West Ham Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Barking Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Queen Elizabeth Olympic Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Tower Hamlets Cemetery Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Hackney Downs", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Springfield Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Woodberry Wetlands", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("North London")},
  { name: "Mudchute Park and Farm", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Clissold Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("North London")},
  { name: "Abney Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("North London")},
  { name: "Haggerston Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Millfields Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Mile End Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Stepney Green Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Claybury Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Dagenham Chase Nature Reserve", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "London Fields", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")},
  { name: "Gunnersbury Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Osterley Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Boston Manor Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Hounslow Heath", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Chelsea Physic Garden", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Pitshanger Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Ealing Common", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Dukes Meadows", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Wormwood Scrubs Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Holland Park ", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Kensal Green Cemetery", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Ravenscourt Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Bishops Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Brompton Cemetery", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Eel Brook Compton", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("West London")},
  { name: "Syon Park", location: "Brockwell Park, Brockwell Park Gardens, London SE24 9BJ", description: "Brockwell Park is a 50.8 hectare park located south of Brixton, in Herne Hill and Tulse Hill in south London. It is bordered by the roads Brixton Water Lane, Norwood Road, Tulse Hill and Dulwich Road. The park commands views of the skyline of the city and Central London.", area: Area.find_by_name("East London")}
]



space_attributes.each do |space_attribute|
  p space_attribute
  space = Space.new(space_attribute)

  file = URI.open("https://source.unsplash.com/featured/?parks")
  space.photo.attach(io: file, filename: "parks", content_type: file.content_type_parse.first)
  space.save!
end

file1 = URI.open("https://blackcablondon.files.wordpress.com/2012/07/battersea-pagoda.jpg")
space = Space.find_by(name: "Battersea Park")
space.photo.attach(io: file1, filename: "battersea-pagoda.jpg", content_type: file1.content_type_parse.first)
space.save!

file2 = URI.open("https://assets.londonist.com/uploads/2019/08/i875/beckenham-place-park-wild-swimming-lake-1607a.jpg")
space = Space.find_by(name: "Beckenham Place Park")
space.photo.attach(io: file2, filename: "beckenham-place-park-wild-swimming-lake-1607a.jpg", content_type: file2.content_type_parse.first)
space.save!

file3 = URI.open("https://londongardenstrust.org/inventory/images/sitepics/SOU007-site.jpg")
space = Space.find_by(name: "Belair Park")
space.photo.attach(io: file3, filename: "SOU007-site.jpg", content_type: file3.content_type_parse.first)
space.save!

file4 = URI.open("https://i1.wp.com/www.theculturemap.com/wp-content/uploads/2020/06/blackheath-parks-in-london.jpg")
space = Space.find_by(name: "Blackheath")
space.photo.attach(io: file4, filename: "blackheath-parks-in-london.jpg", content_type: file4.content_type_parse.first)
space.save!

file5 = URI.open("https://i0.wp.com/www.brixtonbuzz.com/images/brockwell-park-dec-2020-01.jpg")
space = Space.find_by(name: "Brockwell Park")
space.photo.attach(io: file5, filename: "brockwell-park-dec-2020-01.jpg", content_type: file5.content_type_parse.first)
space.save!

file6 = URI.open("https://images-production.gardenvisit.com/uploads/images/16278/burgess_park_1289_jpg_original.jpg")
space = Space.find_by(name: "Burgess Park")
space.photo.attach(io: file6, filename: "burgess_park_1289_jpg_original.jpg", content_type: file6.content_type_parse.first)
space.save!

file7 = URI.open("https://hidden-london.com/wp-content/uploads/2011/08/Clapham-Common-pond-800-1280x720.png")
space = Space.find_by(name: "Clapham Common")
space.photo.attach(io: file7, filename: "Clapham-Common-pond-800-1280x720.png", content_type: file7.content_type_parse.first)
space.save!

file9 = URI.open("https://datastories-deptford.citizensense.net/wp-content/uploads/2017/11/Deptford_Park-1024x683.jpg")
space = Space.find_by(name: "Deptford Park")
space.photo.attach(io: file9, filename: "Deptford_Park-1024x683.jpg", content_type: file9.content_type_parse.first)
space.save!

file10 = URI.open("https://www.londonxlondon.com/wp-content/uploads/2020/06/Dulwich-Park-4.jpg")
space = Space.find_by(name: "Dulwich Park")
space.photo.attach(io: file10, filename: "Dulwich-Park-4.jpg", content_type: file10.content_type_parse.first)
space.save!

puts "Created 116 spaces"



restaurants_attributes = [
  { name:"Dishoom", location: "5 Stable St, London N1C 4AB", description: "Buzzy destination for Indian street food in Bombay-style digs with vintage decor & upscale touches.", area: Area.find_by_name("North London"), price: "££", cuisine: "Indian", opening_time: 1000, closing_time: 2200 },
  { name:"Megan's", location: "27 Circus West Village, London SW11 8NN", description: "Megan’s is open for brunch, lunch, dinner and cocktails every single day!", area: Area.find_by_name("South London"), price: "££", cuisine: "Mediterranean", opening_time: 800, closing_time: 2000 },
  { name:"Levan", location: "Levan, 12-16 Blenheim Grove, London SE15 4QL", description: "Levan serves seasonal and inventive food in a relaxed setting in the heart of peckham, just off Rye Lane, moments from Peckham Overground Station.", area: Area.find_by_name("South London"), price: "££", cuisine: "British", opening_time: 1200, closing_time: 2300 },
  { name:"Salon", location: "Salon, 18 Market Row, Brixton, London SW9 8LD", description: "Salon serves seasonal and inventive food in a relaxed setting in Brixton Village market. It’s like fine dining, but without any of the fuss.", area: Area.find_by_name("South London"), price: "£££", cuisine: "British", opening_time: 1200, closing_time: 2300 },
  { name:"Slaw", location: "149 Upper St, London N1 1RA", description: "Islington's coolest vegan restaurant.", area: Area.find_by_name("North London"), price: "£", cuisine: "Vegan", opening_time: 1000, closing_time: 1800 },
  { name:"Seabird", location: "40 Blackfriars Road, London, SE1 8PB", description: "Enjoy an impressive raw bar and panoramic views in the heart of Southwark.", area: Area.find_by_name("South London"), price: "£££", cuisine: "Portuguese", opening_time: 1130, closing_time: 2400 },
  { name:"Padella", location: "6 Southwark Street, Southwark, London SE1", description: "Small and fast pasta place near Borough Market.", area: Area.find_by_name("South London"), price: "££", cuisine: "Italian", opening_time: 1200, closing_time: 2200 },
  { name:"Sorella", location: "148 Clapham Manor Street, London, SW4 6BX", description: "A superlative Italian from The Dairy team.", area: Area.find_by_name("South London"), price: "££", cuisine: "Italian", opening_time: 1200, closing_time: 1900 },
  { name:"Native", location: "32 Southwark Street, London SE1 1TU", description: "A celebration of all things wild and British near Borough Market.", area: Area.find_by_name("South London"), price: "£££", cuisine: "British", opening_time: 1200, closing_time: 2230 },
  { name:"The Laundry", location: "374 Coldharbour Lane, Brixton, London SW9 8PL", description: "An Edwardian laundry house swaps sheets for small plates.", area: Area.find_by_name("South London"), price: "£££", cuisine: "Brunch", opening_time: 800, closing_time: 1200 },
  { name:"Kudu", location: "119 Queens Road, London SE15 2EZ", description: "An exciting South African small-plates menu with a Bib Gourmand.", area: Area.find_by_name("South London"), price: "£££", cuisine: "Brunch", opening_time: 1200, closing_time: 2200 },
  { name:"Donelly's", location: "40 Bermondsey Street, London SE1 3UD", description: "The latest best-of-British pop-up from a young-gun chef.", area: Area.find_by_name("South London"), price: "££", cuisine: "British", opening_time: 1200, closing_time: 2100 },
  { name:"Coal Rooms", location: "11a Station Way, Station, 4RX, Peckham Rye, London SE15", description: "The South London neighbourhood's hottest new restaurant.", area: Area.find_by_name("South London"), price: "££", cuisine: "British", opening_time: 0700, closing_time: 2200 },
  { name:"Canova Hall", location: "250 Ferndale Road, Brixton, London SW9 8BQ", description: "A hipster Italian joint with history.", area: Area.find_by_name("South London"), price: "££", cuisine: "Italian", opening_time: 800, closing_time: 200 },
  { name:"Plot", location: "70-72 Broadway Market, 29 Tooting High Street, London SW17", description: "British seasonal sharing plates in South London's newest foodie neighbourhood.", area: Area.find_by_name("South London"), price: "££", cuisine: "British", opening_time: 1200, closing_time: 0200 },
  { name:"El Pastór", location: "6 Stoney Street, London Bridge, London SE1", description: "A colourful Mexican restaurant from the brothers behind Barrafina.", area: Area.find_by_name("South London"), price: "££", cuisine: "Mexican", opening_time: 1200, closing_time: 2200 },
  { name:"Bar Duoro", location: "Arch 35b, Union Street, Flat Iron Square, London Bridge, London SE1", description: "Portuguese with a twist in a new foodie destination.", area: Area.find_by_name("South London"), price: "££", cuisine: "Portuguese", opening_time: 1200, closing_time: 2200 },
  { name:"Darby's", location: "3 Viaduct Gardens, Nine Elms, London SW11", description: "The Dairy’s Robin Gill opens a super-size grill restaurant, oyster bar and bakery just south of the river.", area: Area.find_by_name("South London"), price: "££", cuisine: "Seafood", opening_time: 1300, closing_time: 2200 },
  { name:"Oblix", location: "31 St Thomas Street, London SE1 9RY", description: "An elevated experience in one of London's landmarks", area: Area.find_by_name("South London"), price: "££", cuisine: "Seafood", opening_time: 1300, closing_time: 2100 },
  { name:"Roe", location: "Unit S38 Pop Brixton, 89 Brixton Station Road, London SW9 8PQ", description: "An innovative, fishy arrival on Pop Brixton’s laid-back dining scene.", area: Area.find_by_name("South London"), price: "££", cuisine: "Seafood", opening_time: 1300, closing_time: 2100 },
  { name:"Restaurant Story", location: "199 Tooley Street, London SE1 2JX", description: "A Michelin-starred tasting menu that’s paired to the playlist.", area: Area.find_by_name("South London"), price: "££££", cuisine: "British", opening_time: 1200, closing_time: 2100 },
  { name:"Trivet", location: "36 Snowsfields, Southwark, SE1 3SU", description: "Seriously delicious Modern British food in a not so serious setting.", area: Area.find_by_name("South London"), price: "££££", cuisine: "British", opening_time: 1200, closing_time: 2100 },
  { name:"The Garden Café", location: "Lambeth Palace Road, SE1 7LB", description: "Tacked onto the recently opened Garden Museum, it’s a sleek Modern European spot housed in a stunning glass extension to the church.", area: Area.find_by_name("South London"), price: "£££", cuisine: "Brunch", opening_time: 1200, closing_time: 2100 },
  { name:"The Camberwell Arms", location: "65 Camberwell Church Street, Camberwell, SE5 8TR", description: "A handsome gastropub, serving outstanding food!", area: Area.find_by_name("South London"), price: "£££", cuisine: "British", opening_time: 1200, closing_time: 0200 },
  { name:"Artusi", location: "161 Bellenden Road, Peckham, SE15 4DH", description: "Tucked away along Peckham’s Picturesque Bellenden Road,  Artusi serves simple and considered Mediterranean cuisine, in a laid-back, Scandi-esque setting.", area: Area.find_by_name("South London"), price: "££££", cuisine: "Mediterranean", opening_time: 1200, closing_time: 2400 },
  { name:"Milk", location: "18-20 Bedford Hill, Balham, SW12 9RG", description: "It’s a fuss-free South London eatery, serving up everything from caramel-topped buckwheat pancakes, to scrambled eggs with smoked caviar.", area: Area.find_by_name("South London"), price: "££", cuisine: "Brunch", opening_time: 1200, closing_time: 2400 },
  { name:"Booma", location: "244 Brixton Rd, Vassal, London SW9 6AH", description: "A Brixton Road curry house with a boozy concept.", area: Area.find_by_name("South London"), price: "££", cuisine: "Indian", opening_time: 1700, closing_time: 2200 },
  { name:"Mumbai Delight", location: "51A S Lambeth Rd, London SW8 1RH", description: "Great food, good prices, and very good service despite a packed house.", area: Area.find_by_name("South London"), price: "££", cuisine: "Indian", opening_time: 1500, closing_time: 2200 },
  { name:"Tower Tandoori", location: "74-76 Tower Bridge Rd, London SE1 4TP", description: "Established Indian restaurant with classic decor, for Tandoori dishes and Anglo-Indian cuisine.", area: Area.find_by_name("South London"), price: "££", cuisine: "Indian", opening_time: 1200, closing_time: 2330 },
  { name:"The India", location: "21 College Hill, London EC4R 2RP", description: "Classic Indian dishes served in 3 candlelit underground rooms with whitewashed, vaulted ceilings.", area: Area.find_by_name("South London"), price: "££", cuisine: "Indian", opening_time: 1130, closing_time: 2330 },
  { name:"Olives and Meze", location: "131 Clapham High St, London SW4 7SS", description: "A Turkish restaurant and takeaway in Clapham High Street.", area: Area.find_by_name("South London"), price: "££", cuisine: "Mediterranean", opening_time: 1200, closing_time: 2300 },
  { name:"Amigos", location: "25-27 Bagshot St, London SE17 2QW", description: "Very cozy place, friendly staff and good quality food.", area: Area.find_by_name("South London"), price: "££", cuisine: "Mediterranean", opening_time: 1200, closing_time: 1900 },
  { name:"Yada's Green Kitchen", location: "104-106, Rye Ln, London SE15 4RZ", description: "Funky, family-run BYOB kitchen offering traditional Kurdish cooking, a seasonal terrace & shisha.", area: Area.find_by_name("South London"), price: "££", cuisine: "Mediterranean", opening_time: 1200, closing_time: 2300 },
  { name:"Piatto", location: "495 Battersea Park Rd, London SW11 4LW", description: "Casual, upmarket nook with outdoor tables turning out Italian fare & unique charcoal-infused pizza.", area: Area.find_by_name("South London"), price: "££", cuisine: "Italian", opening_time: 1000, closing_time: 2300 },
  { name:"Osteria Toscana", location: "31 Abbeville Rd, London SW4 9LA", description: "Very good value for money, lovely staff, italian vibe, great quality of food.", area: Area.find_by_name("South London"), price: "££", cuisine: "Italian", opening_time: 1000, closing_time: 2300 },
  { name:"Cheeky Chicos", location: "126 St John's Hill, London SW11 1SL", description: "Amazing margaritas, super tasty tacos, friendly staff, and a great vibe.", area: Area.find_by_name("South London"), price: "££", cuisine: "Mexican", opening_time: 1200, closing_time: 2300 },
  { name:"Wahaca", location: "Southbank Centre Queen Elizabeth Hall, Belvedere Rd, London SE1 8XX", description: "Mexican restaurant with a lively soundtrack for small plates of market-style food & cocktails.", area: Area.find_by_name("South London"), price: "££", cuisine: "Mexican", opening_time: 1200, closing_time: 2200 },
  { name:"Santo Remedio", location: "152 Tooley St, London SE1 2TU", description: "Modern take on Mexican street food with casual, idiosyncratic vibe and a creative drinks menu.", area: Area.find_by_name("South London"), price: "££", cuisine: "Mexican", opening_time: 1730, closing_time: 2230 },
  { name:"Chilango", location: "90 Tooley St, London SE1 2TH", description: "Mexican street food with casual vibe.", area: Area.find_by_name("South London"), price: "££", cuisine: "Mexican", opening_time: 1100, closing_time: 2300 },
  { name:"Casa Madeira", location: "46b Albert Embankment, London SE1 7TL", description: "Lively, simple restaurant and bar serving Portuguese tapas and mains, plus pizza, pasta and burgers.", area: Area.find_by_name("South London"), price: "££", cuisine: "Portuguese", opening_time: 1100, closing_time: 2300 },
  { name:"Caravela", location: "145-149 Battersea High St, London SW11 3JS", description: "Delicious and cozy Portuguese in South London.", area: Area.find_by_name("South London"), price: "££", cuisine: "Portuguese", opening_time: 1700, closing_time: 2200 },
  { name:"Pico Bar & Grill", location: "74 Albert Embankment, London SE1 7TL", description: "Lively, contemporary bar-diner with outside seating, offering Portuguese grill dishes and tapas.", area: Area.find_by_name("South London"), price: "££", cuisine: "Portuguese", opening_time: 1200, closing_time: 2300 },
  { name:"The Table Café", location: "83 Southwark St, London SE1 0HX", description: "Breakfast-to-dinner British fare served in a bright, modern space.", area: Area.find_by_name("South London"), price: "££", cuisine: "Brunch", opening_time: 800, closing_time: 1700 },
]

restaurants_attributes.each do |restaurant_attribute|
  restaurant = Restaurant.new(restaurant_attribute)

  file = URI.open("https://source.unsplash.com/featured/?food")
  restaurant.photo.attach(io: file, filename: "food", content_type: file.content_type_parse.first)
  restaurant.save!
end


file11 = URI.open("https://www.arabnews.com/sites/default/files/styles/n_670_395/public/2017/11/13/1032401-2146920921.jpg")
restaurant = Restaurant.find_by(name: "Piatto")
restaurant.photo.attach(io: file11, filename: "1032401-2146920921.jpg", content_type: file11.content_type_parse.first)
restaurant.save!

file12 = URI.open("https://duyt4h9nfnj50.cloudfront.net/resized/bulk_actions_image_76593f36-9e44-4a75-bd08-be35067e5a29-w2880-4c.jpg")
restaurant = Restaurant.find_by(name: "Mumbai Delight")
restaurant.photo.attach(io: file12, filename: "bulk_actions_image_76593f36-9e44-4a75-bd08-be35067e5a29-w2880-4c.jpg", content_type: file12.content_type_parse.first)
restaurant.save!

puts "Created 43 restaurants"



