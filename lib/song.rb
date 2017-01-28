class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    #Artist.song_count += 1
  end

  def artist_name
    return artist ? artist.name : nil
  end

end
