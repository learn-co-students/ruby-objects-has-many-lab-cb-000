class Song

    attr_accessor :name, :artist, :artist_name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def all
        @@all
    end

    def artist_name
        self.artist.name if artist
    end

end
