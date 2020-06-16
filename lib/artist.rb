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

    song.artist = self
    @@song_count += 1
    @songs << song

  end
  def add_song_by_name(name)
    c= Song.new(name)
    c.artist = self
    @songs << c
    @@song_count += 1

  end
  def self.song_count
    @@song_count
  end
end
