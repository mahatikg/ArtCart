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

style1 = Style.create(:name => 'Post-Impressionist')
style2 = Style.create(:name => 'Abstract' )
style3 = Style.create(:name => 'Dutch-Baroque' )
style4 = Style.create(:name =>  'Impressionist' )
style5 = Style.create(:name => 'Romantic' )

Artpiece.create(:title => 'Starry Night', :style => style1, :artist => 'Vincent Van Gogh',
:image => File.new('db/artimages/StarryNight.jpeg'))


Artpiece.create(:title => 'Guernica', :style => style2, :artist => 'Pablo Picasso',
:image => File.new("db/artimages/Guernica.jpeg"))


Artpiece.create(:title => 'The Piano Lesson', :style => style3, :artist => 'Johannes Vermeer',
:image => File.new("db/artimages/PianoLesson.jpeg"))


Artpiece.create(:title => 'Impression, Sunrise', :style => style4, :artist => 'Claude Monet',
:image => File.new("db/artimages/MonetSunrise.jpeg"))


Artpiece.create(:title => 'Salisbury Cathedral, Bishops Grounds', :style  => style5, :artist => 'John Constable',
:image => File.new("db/artimages/ConstableCathedral.jpeg"))

puts "Artpieces and Styles, created"
