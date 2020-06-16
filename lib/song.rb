class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def artist_name
    self.artist.nil? ? nil : self.artist.name
  end
end
