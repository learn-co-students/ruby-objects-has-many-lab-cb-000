class Artist

    attr_accessor :name, :songs

    def initialize(artist_name)
        @name = artist_name
        @songs = [] #array of song objects
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def songs
        @songs
    end

    def add_song_by_name(name)
        newSong = Song.new(name)
        self.add_song(newSong)
    end

    def self.song_count
        Song::all.length
    end

end
