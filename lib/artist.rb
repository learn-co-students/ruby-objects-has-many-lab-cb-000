class Artist
  attr_accessor :name, :song
#/// Class Methods ///
  @@song_count = 0 #=> Class Counter

  def self.song_count #=> Class method, returns Class Counter
    @@song_count
  end

#/// Instance Methods ///
  def initialize(name) #=> Initializes a new Artist with name.
    @name = name
    @songs = [] #=> Keeps track of all songs by this artist.
  end

  def add_song(song)
    self.songs << song #=> Adds new song to that artist's song list.
    song.artist = self #=> Associates this artist w/ the instance from the Song class.
    @@song_count += 1 #=> Keeps track of total number of songs created from ALL artists.
  end

  def add_song_by_name(name)
    name = Song.new(name) #=> creates an instance of a new song from Song class.
    add_song(name) #=> This calls on the #add_song from above....
  end

  def songs #=> returns the total number of songs by a particular artists.
    @songs
  end

end
