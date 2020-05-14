# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(username: 'mightyfineguy', password:'1234asdf')
goal = Goal.create(user_id: 1, goal_name: 'test goal name', goal_description:'test goal description', date: "test goal date")
task = Task.create(goal_id: 1, name: 'test task name', description: 'test goal description')
goal_resource = GoalResource.create(goal_id: 1, name:'test resource name', description: "test description for resource", url: 'test url')

25.times do 
    User.create({
        username: Faker::Beer.brand,
        password: Faker::Beer.name
    })
end 

100.times do 
    Goal.create({
        user_id: rand(25),
        goal_name: Faker::Game.title,
        goal_description: Faker::Lorem.paragraphs,
        date: Faker::Date.forward(days: rand(50))
    })
end

200.times do 
    Task.create({
        goal_id: rand(100),
        name: Faker::DcComics.hero,
        description: Faker::TvShows::SouthPark.quote
    })
end

200.times do 
    GoalResource.create({
        goal_id: rand(100),
        name: Faker::Movies::Lebowski.character,
        description: Faker::Movies::Lebowski.quote,
        url: Faker::FunnyName.name
    })
end

