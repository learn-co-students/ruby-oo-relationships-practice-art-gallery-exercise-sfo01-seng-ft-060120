require_relative '../config/environment.rb'

require 'pry'

# Artist (name, years_experience)
anna = Artist.new("Anna", 10)
ben = Artist.new("Ben", 15)
catherine = Artist.new("Catherine", 20) 

# Gallery (name, city)
red_gallery = Gallery.new("Red Gallery", "London")
blue_gallery = Gallery.new("Blue Gallery", "Paris")
green_gallery = Gallery.new("Green Gallery", "Berlin")

# Painting (title, price)
tiny_painting = Painting.new("Tiny Painting", 250, catherine, red_gallery)
small_painting = Painting.new("Small Painting", 500, anna, blue_gallery)
medium_painting = Painting.new("Medium Painting", 1000, anna, green_gallery)
large_painting = Painting.new("Large Painting", 1500, ben, green_gallery)
enormous_painting = Painting.new("Enormous Painting", 3000, catherine, blue_gallery)


binding.pry

puts "Bob Ross rules."
