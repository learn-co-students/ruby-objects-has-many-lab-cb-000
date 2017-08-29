class Artist
  attr_accessor :songs, :name
  @@song_count = 0

  def initialize(name)
    @songs = []
    @name = name

  end

  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    song.artist = self
    self.class.song_count = self.class.song_count + 1
  end

  def add_song(song)
    @songs << song
    song.artist = self
    self.class.song_count = self.class.song_count + 1

  end

  def self.song_count
    @@song_count
  end

  def self.song_count=(count)
    @@song_count = count
  end


end
