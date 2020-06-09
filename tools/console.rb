require_relative '../config/environment.rb'

julie = Artist.new("Julie", 4)
nicole = Artist.new("Nicole", 2)
regine = Artist.new("Regine", 1)
melanie = Artist.new("Melanie", 2)
jordan = Artist.new("Jordan", 10)

sf_moma = Gallery.new("SF MOMA", "San Francisco")
moco = Gallery.new("MOCO Museum", "Amsterdam")
louvre = Gallery.new("The Louvre", "Paris")

city = Painting.new("The City", 100, jordan, sf_moma)
castle = Painting.new("The Castle", 500, melanie, sf_moma)
trees = Painting.new("Trees", 20, julie, moco)
butterfly = Painting.new("Butterfly", 55, regine, louvre)
snail = Painting.new("Snail", 10, nicole, sf_moma)
bridge = Painting.new("The Bridge", 150, jordan, moco)
tower = Painting.new("The Tower", 124, jordan, louvre)

binding.pry

puts "Bob Ross rules."
