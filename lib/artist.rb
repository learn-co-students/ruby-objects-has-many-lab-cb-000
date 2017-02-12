class Artist
  attr_accessor :name, :song

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    name = Song.new(name)
    add_song(name)
  end

  def self.song_count
    @@song_count
  end

end
