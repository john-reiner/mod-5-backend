# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: 'asdf', password:'asdf')



# goal = Goal.create(user_id: 1, goal_name: 'Complete The Flatiron School', goal_description:'Complete all the mods associated with the Flatiron School', date: "2020-05-28", red: rand(255),green: rand(255),blue: rand(255),)
# task1 = Task.create(goal_id: 1, name: 'Complete mods 1, 2, 3, 4...')
# task2 = Task.create(goal_id: 1, name: 'Present this Project!')
# goal_resource1 = GoalResource.create(goal_id: 1, name:'React Hooks', description: "Learn all about React Hooks!", url: 'https://d585tldpucybw.cloudfront.net/sfimages/default-source/default-album/reactstatehook-06n07.gif?sfvrsn=18e0cae0_1')
# goal_resource2 = GoalResource.create(goal_id: 1, name:'Wilson', description: "Wilson", url: 'https://i0.wp.com/www.dailysquat.com/wp-content/uploads/2017/11/main-qimg-2b1199a571788b22095f79338421a2d9.jpg?resize=602%2C339&ssl=1')


# 25.times do 
#     User.create({
#         username: Faker::Beer.brand,
#         password: Faker::Beer.name
#     })
# end 

# 100.times do 
#     Goal.create({
#         user_id: rand(25),
#         goal_name: Faker::Game.title,
#         goal_description: Faker::Lorem.paragraphs,
#         date: Faker::Date.forward(days: rand(50)),
#         is_complete: false,
#         red: rand(255),
#         green: rand(255),
#         blue: rand(255),
#     })
# end

# 200.times do 
#     Task.create({
#         goal_id: rand(100),
#         name: Faker::DcComics.hero,
#     })
# end

# 200.times do 
#     GoalResource.create({
#         goal_id: rand(100),
#         name: Faker::Movies::Lebowski.character,
#         description: Faker::Movies::Lebowski.quote,
#         url: Faker::Avatar.image
#     })
# end