class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  @@all_songs = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
     song.artist = self
     self.songs << song
     @@all_songs << song
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    self.songs << song
    @@all_songs << song
  end
  
  def self.song_count
    @@all_songs.length 
  end
    
  
end