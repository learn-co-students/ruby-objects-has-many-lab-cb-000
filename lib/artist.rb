class Artist
  attr_accessor :name
  attr_reader :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
    @@song_count +=1
    name.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@song_count +=1    
  end

  def self.song_count
    @@song_count
  end

end