# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "loading users"
  user1 = User.create!(first_name: 'Alan', last_name: 'Johnson', email: 'alanj@gmail.com', password: '123456')
  user2 = User.create!(first_name: 'Andrew', last_name: 'Meyer', email: 'andrewm@gmail.com', password: '123456')
  user3 = User.create!(first_name: 'Melina', last_name: 'Black', email: 'melinab@gmail.com', password: '123456')
  user4 = User.create!(first_name: 'Corinna', last_name: 'Milan', email: 'corinnam@gmail.com', password: '123456')
puts "created users"

puts "loading art pieces"
5.times do
  ArtPiece.create!(title: 'Diagonal Freeway', artist: 'Alan Johnson', description: 'This soothing painting shows the silence found in an autumn forest. Full of colour and gentle energy with aspects of texture, it is a calm scene that will ease the mind. Varnished and protected to ensure the colours and the art last for a very long time! It is framed in a solid wood, luxurious frame, with grain detail that does not have glass in it (so the texture can be presented to its fullest potential) strung and ready to hang! Size: 12 x 16 inches -unframed 16 x 20 x 0.5 inches - framed (Sold Framed).', price: '25', availability: true, user: user1)
  ArtPiece.create!(title: 'Silent Fall', artist: 'Andrew Meyer' description: 'A luxurious, striking contemplation of the tree in autumn. This original creation is a study of the beautiful colours that nature presents to us during The Fall, this second artwork focusing on bright blue skies against the yellow leaves. I have represented light and shade and used once again my discipline with colour use. There is a lot of texture also here, which the changing light of the day will pick up beautifully.', price: '78', availability: true, user: user2)
  ArtPiece.create!(title: 'Cat Abstract', artist: 'Melina Black' description: 'This original luxury, bespoke artwork shows a cute ginger kitten, who is just stirring from sleep. I have created the art using the thick paints. I use high quality acrylic paints in my usual uplifting and joyful colours. My pallet knives create the artwork aswell as disciplined splashing and painting effects.', price: '82', availability: true, user: user3)
  ArtPiece.create!(title: 'Impressionist Moon', artist: 'Corinna Milan' description: 'An original, one off acrylic painting of bees under a misty moon. Quite a surreal piece, I have named this Night Shift as the bees are still at work gathering pollen. Look closely and you will see there are three of them buzzing away.', price: '46', availability: true, user: user4)
end 
puts "created art pieces"