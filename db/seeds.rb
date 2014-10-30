# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# rails generate scaffold Activity name:string category:string location:string latitude:float longitude:float description:string rating:integer url:string

Category.create name: "Arcade", image: "arcade.jpg"
Category.create name: "Archery", image: "archery.jpg"
Category.create name: "Bowling", image: "bowling-pins.jpg"
Category.create name: "Driving Simulator", image: "driving.jpg"
Category.create name: "Pool/Snooker/Billiards", image: "billiards.jpg"

Activity.create name: "Carlos Bendengo", category: Category.find_by_name("Bowling"), location: "Causeway Bay", latitude: 22.275251, longitude: 114.186776, description: "American-style bowling alley, lots of space and a cafe too", rating: 5, url: "http://www.scaa.org.hk/catalog/index.php"
Activity.create name: "Bellatrix Stargazer", category: Category.find_by_name("Archery"), location: "Lion Rock Archery Range Wong Tai Sin", latitude: 22.345449, longitude: 114.182292, description: "Far from the CBD but good facilities", rating: 4, url: "http://www.archery.org.hk/"
Activity.create name: "Johnny Thumper", category: Category.find_by_name("Arcade"), location:  "Namco Wonder Park, Lok Fu Plaza, Kowloon Tong", latitude: 22.337409, longitude: 114.187459, description: "Best games arcade in the city", rating: 5, url: ""
Activity.create name: "Algo Huntropper", category: Category.find_by_name("Driving Simulator"), location: "LG/F, 1-2 Chancery Ln, Central", latitude: 22.280362, longitude: 114.154145, description: "For 10 years, Sideways has been Hong Kong’s premier virtual racing centre with all the thrills of a high speed race track, but in a safe, clean environment. Sideways is for anyone who loves to experience “the real thing” – for those who want more than what their Playstation or Xbox can offer", rating: 5, url: "http://www.sideways-driving-club.com/"
Activity.create name: "Valery Snapes", category: Category.find_by_name("Pool/Snooker/Billiards"), location: "King's Hotel Hong Kong 303 Jaffe Rd, Wan Chai", latitude: 22.27953, longitude: 114.178296, description: "Great pool place, also serves book and drinks. Can get very busy sometimes.", rating: 3, url: "http://www.joesbilliards.com"