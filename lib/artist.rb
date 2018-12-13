require 'song'
class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    newSong = Song.new(song_name)
    newSong.artist = self
    @songs << newSong
  end

  def self.song_count
    Song.all.size
  end

end
