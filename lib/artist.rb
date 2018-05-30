class Artist

  @@all_songs = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    @songs << song
    @@all_songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@all_songs << song
  end

  def songs
    @songs
  end


  def song_count
    @songs.size
  end

  def self.song_count
    @@all_songs.size
  end

end
