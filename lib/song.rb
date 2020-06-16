class Song
attr_accessor :name, :artist
@@all = []

def initialize(name, artist=nil)
  @name=name
  @@all << self
end

def artist_name
  if (self.artist.nil? == true)
    nil
  else
    self.artist.name
  end
end

end
