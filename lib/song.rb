class Song
  attr_accessor :name, :artist

  def initialize(song_title)
    @name=song_title
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
