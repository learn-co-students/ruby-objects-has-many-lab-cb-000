#require 'pry'
#require_relative './song.rb'

class Artist
  @@song_count = 0
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end

#adele = Artist.new("Adele")
#adele.add_song_by_name("Rolling in the Deep")
#adele.songs.last.artist
#
#puts adele.songs.last.name
#
#binding.pry
#
#puts "here ends"
