class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all # Painting.all returns an array of all the paintings
    @@all
  end

  def self.total_price # Painting.total_price returns an integer that is the total price of all paintings
    total = all.map { |painting| painting.price }.sum
  end
end
