class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist_name
    return @artist.name if @artist != nil
    return nil
  end
end
