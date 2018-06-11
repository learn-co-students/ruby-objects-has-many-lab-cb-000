class Artist
  attr_accessor :name

  @@song_count = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count << song
  end


  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@song_count << song
  end

  def song_count
    @songs.size
  end

  def self.song_count
    @@song_count.size
  end


end
