class Artist
  attr_accessor :name, :songs
  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@songs << song
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song =  Song.new(name)
    self.add_song(song)
  end

  def self.song_count
    @@songs.count
  end

end
