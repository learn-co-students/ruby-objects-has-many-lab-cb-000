class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name = nil)
    @name = name
    @@all << self
  end

  def artist_name
    artist ? artist.name : nil
  end
end
