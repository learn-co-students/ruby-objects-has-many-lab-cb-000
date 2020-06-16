class Song

  attr_accessor :name, :artist
  attr_reader

  def initialize(name)
    @name = name
  end

  def artist_name
    @artist ? @artist.name : nil
  end

end
