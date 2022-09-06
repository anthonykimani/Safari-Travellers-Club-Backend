puts "🌱 Seeding spices..."
Destination.destroy_all
User.destroy_all
Review.destroy_all
# # Seed your database here
# 50.times do
# end

mara = Destination.create(name:"Maasai Mara",location: "kenya",price:50000,image:"https://i.postimg.cc/ryGhgtyR/elephant-pov.jpg")
zanzibar = Destination.create(name:"Zanzibar Island",location:"zanzibar",price:80000,image:"https://i.postimg.cc/pdg0cfnz/hotel-1.jpg")
kruger = Destination.create(name:"Kruger Island",location:"south africa",price:1200000,image:"https://i.postimg.cc/KzP59dbh/safari-tour.jpg")
serengeti = Destination.create(name:"serengeti",location:"tanzania",price:440000,image:"https://i.postimg.cc/ryGhgtyR/elephant-pov.jpg")
mana = Destination.create(name:"Mana Pools National Park",location:"zimbabwe",price: 370000,image:"https://i.postimg.cc/5NxsrNj7/jungle-1.jpg")

mark = User.create(first_name: "Mark",last_name:"olo",email: "mark@gmail.com")
joy = User.create(first_name: "Joy",last_name:"mwas",email: "joy@gmail.com")
ada = User.create(first_name: "ada",last_name:"moraa",email: "mora@gmail.com")
john = User.create(first_name: "john",last_name: "deng",email: "john@gmail.com")
bruce = User.create(first_name: "bruce",last_name: "ontoo",email: "bruce@gmail.com")

awesome = Review.create(comment: "Awesome experience with loved ones",rating:5)
fine = Review.create(comment: "Enjoyed the animals views of the wild",rating:4)
fun = Review.create(comment: "Excilariting experience with to see the safari",rating:4)
bad = Review.create(comment: "Our car broke down in the desert",rating:3)
relaxed = Review.create(comment: "Theraupetic ride throughtout the park",rating:5)

# https://i.postimg.cc/DydtWM4D/beach-overlook.jpg
# https://i.postimg.cc/Zn6Xxf7W/beach-sand.jpg
# https://i.postimg.cc/hvR5vLDc/desert-journey.jpg
# https://i.postimg.cc/1zgCKC4y/desertscape.jpg
# https://i.postimg.cc/zvwPgyvW/drinks.jpg
# https://i.postimg.cc/pXZ6V5gM/elephant-herd.jpg
# https://i.postimg.cc/ryGhgtyR/elephant-pov.jpg
# https://i.postimg.cc/nhr0HR4q/giraffe.jpg
# https://i.postimg.cc/T3NNgMdk/girraffe.jpg
# https://i.postimg.cc/2SSX18Db/girraffe-sunset.jpg
# https://i.postimg.cc/pdg0cfnz/hotel-1.jpg
# https://i.postimg.cc/vBf0J4Wj/hotel-2.jpg
# https://i.postimg.cc/5NxsrNj7/jungle-1.jpg
# https://i.postimg.cc/3JntQ5vK/lion.jpg
# https://i.postimg.cc/k5tsS2h4/palm-trees.jpg
# https://i.postimg.cc/Gtbx6q38/pina-coladas.jpg
# https://i.postimg.cc/cLzT6Rh2/safari-ambience.jpg
# https://i.postimg.cc/KzP59dbh/safari-tour.jpg
# https://i.postimg.cc/RhGLmKqP/savannah-sunset.jpg
# https://i.postimg.cc/59m38dpw/starfish.jpg

puts "✅ Done seeding!"


# Make 10 users
# 10.times do
#     User.create(name: Faker::Name.name)
#   end
  
#   # Make 50 games
#   50.times do
#     # create a game with random data
#     game = Game.create(
#       title: Faker::Game.title,
#       genre: Faker::Game.genre,
#       platform: Faker::Game.platform,
#       price: rand(0..60) # random number between 0 and 60
#     )
    
#     # create between 1 and 5 reviews for each game
#     rand(1..5).times do
#       # get a random user for every review
#       # https://stackoverflow.com/a/25577054
#       user = User.order('RANDOM()').first
  
#       # A review belongs to a game and a user, so we must provide those foreign keys
#       Review.create(
#         score: rand(1..10),
#         comment: Faker::Lorem.sentence,
#         game_id: game.id,
#         user_id: user.id
#       )
#     end
#   end