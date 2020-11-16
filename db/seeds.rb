# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "loading seed"
ArtPiece.create!(title: 'Golden Vase', description: 'Old Vase with golden details.', price: '100', availability: true, user: User.first)
ArtPiece.create!(title: 'Black Vase', description: 'Old Vase with black details.', price: '150', availability: true, user: User.first)
ArtPiece.create!(title: 'Green Vase', description: 'Old Vase with green details.', price: '150', availability: true, user: User.first)
puts "created seed"