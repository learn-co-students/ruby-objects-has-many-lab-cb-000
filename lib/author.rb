class Author 
  
  attr_accessor :name, :posts
  
  @@all = []
  @@all_posts = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def add_post(post)
     post.author = self
     self.posts << post
     @@all_posts << post
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    self.posts << post
    @@all_posts << post
  end
  
  def self.post_count
    @@all_posts.length 
  end
    
  
  
  
end