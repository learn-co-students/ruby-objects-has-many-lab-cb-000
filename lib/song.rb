class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name
    if @artist.to_s == ""
      return nil
    else
      return @artist.name
    end
  end
end