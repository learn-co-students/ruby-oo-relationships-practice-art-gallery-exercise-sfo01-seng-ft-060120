class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all # Gallery.all returns an array of all the galleries
    @@all
  end

  def paintings # Gallery#paintings returns an array of all paintings in a gallery
    Painting.all.find_all { |painting| painting.gallery == self }
  end

  def artists # Gallery#artists returns an array of all artists that have a painting in a gallery
    self.paintings.map { |painting| painting.artist }
  end

  def artist_names # Gallery#artist_names returns an array of the names of all artists that have a painting in a gallery
    self.artists.map { |artist | artist.name }
  end

  def most_expensive_painting # Gallery#most_expensive_painting returns an instance of the most expensive painting in a gallery
    paintings.max { |painting| painting.price }
  end

end
