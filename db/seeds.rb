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