class Song
  attr_accessor :name, :artist, :artist_name

  def initialize(name = "nil")
    @name = name
    @artist_name = Artist.name
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
