class Artist 
  attr_accessor :name 
  @@songs_artists = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def songs 
    @songs 
  end
  
  def add_song(song)
    @songs << song 
    @@songs_artists << song   
    song.artist = self 
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    @@songs_artists.size
  end
  
end