class Author 
  attr_accessor :name
  attr_reader :posts
  
  @@all = []
    
  def self.post_count 
    @@all.map(&:posts).map(&:length).reduce(&:+)
  end
  
  def initialize(name)
    @name = name 
    @posts = []
    @@all << self 
  end 
  
  def add_post(post)
    posts << post 
    post.author = self 
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    posts << post 
    post.author = self
    post.title = title
  end
end 

class Post 
  attr_accessor :author, :title
  
  def initialize(name)
    @name = name 
  end 
end 