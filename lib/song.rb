class Song

attr_accessor :title, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      nil
    end

  end

  def name
    @name
  end

end
