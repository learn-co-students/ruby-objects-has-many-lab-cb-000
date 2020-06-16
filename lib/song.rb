class Song
  def initialize(name)
    @name = name
  end
  def name=(name)
    @name = name
  end
  def name
    @name
  end
  def artist=(artist)
    @artist = artist
  end
  def artist
    @artist
  end
  def artist_name
    self.artist ? self.artist.name : nil
  end
end
