class Post
  attr_accessor :author, :title
  attr_reader :posts

  def initialize(title)
    @posts = []
    @title = title
  end

  def author_name
    if self.author
      self.author.name
    else
      return nil
    end
  end
  
end