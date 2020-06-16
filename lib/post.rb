class Post 
  attr_accessor :title, :author 

  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    return nil if author == nil 
    author.name
  end 
end 


class Author 
  attr_accessor :name 
  attr_reader :posts
  
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def add_post(post)
    @posts << post
    post.author = self 
  end
end