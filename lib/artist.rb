class Artist
  attr_accessor :name, :songs

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    @@song_count = @@songs.size
  end
end
