class Post
  def initialize(title)
    @title = title
  end
  def title=(title)
    @title = title
  end
  def title
    @title
  end
  def author=(author)
    @author = author
  end
  def author
    @author
  end
  def author_name
    self.author ? self.author.name : nil
  end
end
