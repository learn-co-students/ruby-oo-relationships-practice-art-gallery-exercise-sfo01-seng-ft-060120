class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.collect { |painting| painting.gallery }
  end

  def cities
    self.galleries.collect { |gallery| gallery.city }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.all
    @@all
  end

  def self.total_experience
    self.all.sum { |artist| artist.years_experience }
  end

  def Artist.most_prolific
    self.all.max_by { |artist| artist.paintings.count / artist.years_experience }
  end
end
