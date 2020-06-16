class Artist
  @@song_count = 0

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    #increment song_count by 1
    @@song_count += 1
    #add given song obj to artists songs collection
    @songs << song
    #set the given song obj artist to this artists obj
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    #add to songs[]
    @songs << song
    #increment song_count
    @@song_count += 1
    #associate artist with song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end

end
