# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
restaurants_attributes = [
{
  name: 'ChingChong',
  address: '7, rue de Pekin',
  phone_number: '01 02 03 04 05',
  category:'chinese'
},
{
  name: 'Mario',
  address: '8, rue de Toscane',
  phone_number: '01 02 03 04 05',
  category: 'italian'
},
{
  name: 'Hanzo Izakaya',
  address: '9, rue de Tokyo',
  phone_number: '01 02 03 04 05',
  category: 'japanese'
},
{
  name: 'Chez Babette',
  address: '10, rue de Paris',
  phone_number: '01 02 03 04 05',
  category: 'french'
},
{
  name: 'Une Frite',
  address: '11, rue de Bruxelle',
  phone_number: '01 02 03 04 05',
  category: 'belgian'
}
]

restaurants_attributes.each { |params| Restaurant.create!(params) }
