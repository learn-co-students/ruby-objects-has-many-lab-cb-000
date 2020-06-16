require 'pry'

class Artist
  attr_accessor :name, :songs
  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    number_of_songs = 0
    all_songs = @@artists.each do |artist|
      number_of_songs += artist.songs.length
    end
    number_of_songs
  end
end
