class Artist
  # has an attr_accessor for name
  attr_accessor :name

  @@song_count = 0

  # is initialized with a name
  # is initialized with an empty collection of songs
  def initialize(name)
    @name = name
    @songs = []
  end

  # takes in an argument of a song and adds that song to the artist's collection and tells the song that it belongs to that artist
  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  # takes in an argument of a song name, creates a new song with it and associates the song and artist
  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  # has many songs
  def songs
    @songs
  end

  # is a class method that returns the total number of songs associated to all existing artists
  def self.song_count
    @@song_count
  end
end
