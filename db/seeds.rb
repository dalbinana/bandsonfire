# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create name: 'Elefant Records', email:'dani@commonpeoplei.com', password:'12345678' 

Band.create name: 'Cola Jet Set', spotifyID:'2UKGuGLvM4j4qbxaGslLWT'
Band.create name: 'La Bien Querida', spotifyID:'1C4F7PHDaEkp5ZL1rkkmrE'
Band.create name: 'Cooper', spotifyID:'2Ynst7DZrEJnlaMM41ZCxd'

	