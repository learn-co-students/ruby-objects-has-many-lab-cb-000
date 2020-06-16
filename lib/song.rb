class Song

    attr_accessor :name,  :artist

    @@all = []  #list of all songs created

    def initialize(name)
        @name = name
        @@all << self #class variable array to this instance

    end

    def self.all  #class method returns array of all songs
        @@all
    end

    def artist_name
        #check if we have an artist object
        #before we check the object's property
        if (self.artist)
            self.artist.name
        else
            nil
        end
    end


end
