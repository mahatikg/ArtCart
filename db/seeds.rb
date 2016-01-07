# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# artpieces = Artpiece.create ([
#   { title: "Starry Night", artist: "Van Gogh", style: "Post-Impressionist"},
#   { title: "The Kiss", artist: "Klimnt", style: "Art Nouveau"},
#   {title: "Girl with the Pearl Earring", artist: "Vermeer", style: "Dutch Baroque"}
#   ])

Artpiece.create(:title => 'Starry Night', :style => 'Post-Impressionist', :artist => 'Vincent Van Gogh', :image => 'https://en.wikipedia.org/wiki/The_Starry_Night#/media/File:Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg')
Artpiece.create(:title => 'Guernica', :style => 'Abstract', :artist => 'Pablo Picasso', :image => 'https://upload.wikimedia.org/wikipedia/en/7/74/PicassoGuernica.jpg')
Artpiece.create(:title => 'The Piano Lesson', :style => 'Dutch-Baroque', :artist => 'Johannes Vermeer', :image => 'https://en.wikipedia.org/wiki/Johannes_Vermeer#/media/File:Jan_Vermeer_van_Delft_014.jpg')
Artpiece.create(:title => 'Impression, Sunrise', :style => 'Impressionist', :artist => 'Claude Monet', :image => 'https://en.wikipedia.org/wiki/Claude_Monet#/media/File:Claude_Monet,_Impression,_soleil_levant.jpg')
Artpiece.create(:title => 'Salisbury Cathedral, Bishops Grounds', :style  =>'Romantic' :artist => 'John Constable',  :image => 'https://en.wikipedia.org/wiki/John_Constable#/media/File:John_Constable_-_Salisbury_Cathedral_from_the_Bishop%27s_Garden_-_Google_Art_Project.jpg')

style.create[:style => 1, : => 'Paris' ]
m

puts "Artpieces and Styles, created"
