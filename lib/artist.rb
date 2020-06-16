class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    song
  end

  def self.song_count
    Song.all.count
  end


end



# jay_z = Artist.new("Jay-Z")
#
#
# ninetynine_problems = Song.new("99 Problems", "rap")
# crazy_in_love = Song.new("Crazy in Love")
#
# jay_z.add_song(ninetynine_problems)
# jay_z.add_song(crazy_in_love)
#
# jay_z.songs
# crazy_in_love.artist.name
#
# jay_z = Artist.new("Jay-Z")
# song1 = jay_z.add_song_by_name("It's a Hard Knock Life")
#
# crazy_in_love.artist_name
# song1.artist_name

#
# adele = Artist.new("Adele")
# adele.add_song_by_name("Rolling in the Deep")
# adele.songs.last.name
# adele.songs.last.artist
