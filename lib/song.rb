require "pry"

class Song


	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def artist_name
		artist = nil
		if(@artist != nil)
			artist = @artist.name
		end
		artist
	end
	

end
