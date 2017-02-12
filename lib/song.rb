class Song
  attr_accessor :name, :artist

  def initialize(name) #=> Creates a new instance of a song with a name.
    @name = name
  end

  def artist_name #=> Returns the artist's name of the song || Nil if the song has no artist.
    @artist != nil ? self.artist.name : nil
  end

end
