class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience) 
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all # Artist.all returns an array of all the artists
    @@all
  end

  def paintings # Artist#paintings returns an array all the paintings by an artist
    Painting.all.find_all { |painting| painting.artist == self }
  end

  def galleries # Artist#galleries returns an array of all the galleries that an artist has paintings in
    self.paintings.map { |painting| painting.gallery }
  end

  def cities # Artist#cities returns an array of all cities that an artist has paintings in
    self.galleries.map { |gallery| gallery.city }
  end

  def self.total_experience # Artist.total_experience returns an integer that is the total years of experience of all artists
    total = all.map { |artist| artist.years_experience }.sum
  end

  def self.most_prolific # Artist.most_prolific returns an instance of the artist with the highest amount of paintings per year of experience.
    most_prolific_painter = all.max { |artist| artist.years_experience }
  end

  def create_painting(title, price, gallery) # Artist#create_painting Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    Painting.new(title, price, self, gallery)
  end

end
