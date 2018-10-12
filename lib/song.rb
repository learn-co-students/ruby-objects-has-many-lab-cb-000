class Song 
  attr_accessor :name, :artist

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    return nil if artist == nil 
    artist.name
  end 
end 


class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end
  
  def add_song(song)
    @songs << song
    song.artist = self 
  end
end