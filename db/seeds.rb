# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create name: 'Elefant Records', email:'dani@commonpeoplei.com', password:'12345678' 

(1..10).each do |i|
	Band.create(
	name: Faker::Name.name,
	spotifyID: Faker::Number.positive,
	user_id: '1',
	picture: Faker::Placeholdit.image)
end

	