# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do 
	Person.create({ 
		fname: Faker::Name.first_name, 
		lname: Faker::Name.last_name, 
		age: Faker::Number.number(2)
		})
end

10.times do
	Habit.create({
		name: Faker::Company.catch_phrase,
		description: Faker::Company.bs
		})
end

20.times do
	habit_id = Habit.all.map(&:id).sample
	person_id = Person.all.map(&:id).sample
	Personality.create({
		name: Faker::Name.title,
		habit_id: habit_id,
		person_id: person_id,
		})
end