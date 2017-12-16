class Song
  # has a name
  # belongs to an artist
  attr_accessor :name, :artist

  # is initialized with an argument of a name
  def initialize(name)
    @name = name
  end

  # knows the name of its artist
  # returns nil if the song does not have an artist
  def artist_name
    self.artist ? self.artist.name : nil
  end
end
