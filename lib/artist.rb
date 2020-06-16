class Artist
	attr_accessor :name

	@@song_count = 0

	def initialize (name)
		@name = name
		@songs = []
		@artist = self
	end

	def songs
		@songs
	end

	def name
		@name
	end

	def add_song(song)
			@songs << song 
			song.artist = @artist #song belongs to artist
			@@song_count += 1
	end

	def add_song_by_name(song)
		#make a custom constructor
		title = Song.new(song)
		#song is the string of the song name 
		#it belongs to an artist #associates song and artist
		#convert string of song to the object Song
		title.artist = @artist
		@songs << title
		@@song_count += 1
	end

	def self.song_count
		@@song_count
	end
end
