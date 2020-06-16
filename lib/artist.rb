class Artist
  attr_accessor :name
  @@songs = []
  
  def initialize(name)
    @name = name
    @songs = []
    
  end
  
  def self.song_count
    @@songs.count
  end
  
  def add_song(song)
    @songs << song
    @@songs  << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    @@songs << song
    song.artist = self
  end

  
end