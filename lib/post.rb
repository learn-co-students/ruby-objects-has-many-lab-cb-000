class Post
  attr_accessor :title, :author, :author_name

  def initialize(title = "nil")
    @title = title
    @author = author
    @author_name = @author
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

end
