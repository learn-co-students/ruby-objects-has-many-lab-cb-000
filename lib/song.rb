require "pry"
class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def artist_name
    #binding.pry
    if @artist == nil
      nil
    else
      self.artist.name
    end
  end
end
