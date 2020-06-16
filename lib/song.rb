class Song
  @@song_count = 0

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@song_count += 1
  end

  def artist_name
    self.artist.name if self.artist
  end

  def self.song_count
    @@song_count
  end

end
