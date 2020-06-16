require "pry"

class Post
	
 
	attr_accessor :title, :author

	def initialize(title)
		@title = title
	end

	def author_name
		author = nil
		if(@author != nil)
			author = @author.name
		end
		author
	end

end