class Artist

  attr_accessor :name, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  @@counter = 0


  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@counter +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@counter += 1
  end

  def self.song_count
    @@counter
  end
end
