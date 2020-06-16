class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end
  def author_name
    defined?(self.author.name) ? self.author.name : nil 
  end
end
