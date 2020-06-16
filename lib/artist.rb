class Artist
  attr_accessor :name, :songs
  @@artists = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    @@song_count += 1
    song_name = Song.new(song_name)
    song_name.artist = self
    @songs << song_name
  end

  def self.song_count
    @@song_count
  end

end
