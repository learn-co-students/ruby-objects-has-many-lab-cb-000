class Author
  
  @@post_count = 0
  
  attr_accessor :name
  
  def initialize(name)
    @posts = []
    @name = name
  end
  
  def add_post(post)
    @@post_count += 1
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
   post = Post.new(title)
   self.add_post(post)
  end
  
  def posts
    @posts
  end
  
  def self.post_count
    @@post_count
  end
end