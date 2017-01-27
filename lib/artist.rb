class Artist

  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    self.class.song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    self.class.song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def self.song_count=(value)
    @@song_count = value
  end

end