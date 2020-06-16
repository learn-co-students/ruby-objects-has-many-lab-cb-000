class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def artist_name

    #Using ternary syntax
    (self.artist ? self.artist.name : nil)

    #If/else statements work too
    #if self.artist != nil
      #self.artist.name
    #else
      #nil
    #end
  end

end
