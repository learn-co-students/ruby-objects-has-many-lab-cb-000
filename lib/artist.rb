class Artist 
  attr_reader :name
  # The songs sung by a particular artist
  attr_reader :songs
  
  @@all = []
    
  def self.song_count 
    # in ruby 2.5.1 can do @@all.sum { |artist| artist.songs.length }
    # Or do @@all.map(&:songs).map(&:length).reduce(&:+)
    
    number_of_songs = @@all.map { |artist| artist.songs.length }
    number_of_songs.reduce(0) { |sum, num| sum + num }
  end
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end
  
  def add_song(song)
    songs << song
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    songs << song
  end
end 

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
   @name = name 
  end 
end 
