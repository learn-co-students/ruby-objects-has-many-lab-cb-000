class Artist
  attr_reader :songs
  attr_accessor :name

  @@artists = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def self.all
    @@artists
  end


  def self.song_count
    @@song_count
  end

end
