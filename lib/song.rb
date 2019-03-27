class Song
    @@all = []
    attr_accessor :name, :artist
    def initialize(name)
      @name = name
      @@all << self
    end
    def artist=(artist)
        @artist = artist
        if artist.songs.include? self == false
          artist.add_song(self)
        end
    end
    def self.all
      @@all
    end
    def artist_name
      if self.artist != nil
        if self.artist.name != nil
          self.artist.name
        end
      else
        nil
      end
    end
  end
