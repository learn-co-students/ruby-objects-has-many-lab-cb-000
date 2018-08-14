class Author 
  attr_accessor :name 
  @@post_all = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    @posts
  end 
  
  def add_post(post)
    @posts << post 
    @@post_all << post 
    post.author = self 
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  
  def self.post_count 
    @@post_all.size
  end
end 