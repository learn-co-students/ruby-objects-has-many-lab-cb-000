class Song

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
    @artist = nil
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def artist_name
    @artist == nil ? nil : @artist.name
  end


end
