class Author
	attr_accessor :name

	@@post_count = 0 

	def initialize(name)
		@name = name
		@posts = []
		@author = self
	end

	def name 
		@name
	end
	
	def posts
		@posts
	end

	def add_post(title)
		@posts << title 
		title.author = @author #song belongs to artist
		@@post_count += 1
	end

	def add_post_by_title(title)
		new_title = Post.new(title)
		new_title.author = @author
		@posts << new_title
		@@post_count += 1
	end

	def self.post_count
		@@post_count 
	end
end

