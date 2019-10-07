class Song
  attr_accessor :name, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def artist_name
    self.artist.name if !self.artist.nil?
  end

end
