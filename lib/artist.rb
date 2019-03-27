class Artist
  attr_accessor :name
  @@all_artists_songs_array = []
  def initialize(name)
    @name = name
    @songs_array = []
  end
  def songs
    @songs_array
  end
  def add_song(song_variable)
  #   puts "song_variable inputted reads: #{song_variable}"
  #   puts "songs_array initially reads: #{@songs_array}"
    @songs_array << song_variable
    @@all_artists_songs_array << song_variable
  #   puts "songs_array after shoveling reads: #{@songs_array}"
  #   puts "song_variable.artist initially reads: #{song_variable.artist}"
    if song_variable.artist == nil
      song_variable.artist = self
      # puts "song_variable.artist after equating reads: #{song_variable.artist}"
    end
  end
  def add_song_by_name(name_string)
    new_song_variable = Song.new(name_string)
    @songs_array << new_song_variable
    @@all_artists_songs_array << new_song_variable
    # puts "We just initialized #{new_song_variable}"
    # puts "new_song_variable.name returns #{new_song_variable.name}"
    # puts "new_song_variable.artist initially returns #{new_song_variable.artist}"
    if new_song_variable.artist == nil
      new_song_variable.artist = self
      # puts "new_song_variable.artist now returns #{new_song_variable.artist}"
    end
  end
  def song_count
    @songs_array.count
  end
  def self.song_count
    @@all_artists_songs_array.count
  end
end
