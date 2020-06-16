class Artist
  attr_accessor :name
  @@song_count = 0

  def self.song_count
    @@song_count
  end

  def initialize name
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song song
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name title
    song = Song.new title
    add_song song
  end

end

# MJ = Artist.new "MJ"
#
# human_nature = Song.new "Human Nature"
#
# MJ.add_song human_nature
#
# puts human_nature.artist
