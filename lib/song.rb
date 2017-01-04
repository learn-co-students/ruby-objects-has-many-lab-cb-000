class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end

  def artist_name
    if @artist != nil
      @artist.name
    else
      nil
    end
  end

end
