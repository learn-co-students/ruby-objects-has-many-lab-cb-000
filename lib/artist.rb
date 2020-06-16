class Artist
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @songs = [ ]
    end

    #The songs method has many songs due to the @songs [ ] being filled with songs each
    #time a new song is created/new artist is instantiated
    #This method allows the songs to be reported
    def songs
      @songs
    end

    #The add_song method takes in an argument of a song and associates that song with the artist by 
    #telling the song that it belongs to that artist
    def add_song(song)
      @songs << song
      song.artist = self
    end
     
    #The add_song_by_name method takes in an argument of a song name, 
    #creates a new song with it, add that new song to the array of songs,
    #and associates the song and artist
    def add_song_by_name(song_name)
      song = Song.new(song_name)
      @songs << song
      song.artist = self
        
    end
    
    #The class method song_count is written as self.song_count 
    #and it returns the total number of songs associated to all existing artists
    #by using the relationship it has with the Song class
    def self.song_count
       Song.all.length
    end
      
end