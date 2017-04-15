class Artist
  attr_accessor :name, :songs
  @@artists = []
  @@all_songs = []
  @@song_count = 0
  def initialize(name)
    @name=name
    @songs = []
    @@artists << self
  end
  def add_song(song)
    @songs << song
    song.artist = self
    @@all_songs << song
    @@song_count += 1
  end
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
    song
  end
  def self.song_count
    @@song_count
  end
  
end