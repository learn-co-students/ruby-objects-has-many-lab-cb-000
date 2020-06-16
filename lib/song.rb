class Song
  attr_accessor :name, :artist
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist ? @artist_name = self.artist.name : nil
  end
end
