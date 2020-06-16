class Song
  attr_accessor :artist, :name, :genre

  def initialize(title)
    @name = title
  end

  def artist_name
    return nil if @artist == nil
    @artist.name
  end


end
