class Author
attr_accessor :name , :posts

@@all_post = []

def initialize(name)
  @name = name
  @posts = []
end





def add_post (post)
  post.author = self
  @posts << post
  @@all_post << post
end


def add_post_by_title(post_title)
  post = Post.new(post_title)
  post.author = self
  @posts << post
  @@all_post << post
end

def self.post_count
   @@all_post.count
end

end
