class Post
  @@all = []
  attr_accessor :title
  def initialize(title)
    @title = title
    @author = nil
    @@all << self
  end
  def author=(author_variable)
    @author = author_variable
  end
  def author
    @author
  end
  def author_name
    if @author != nil
      @author.name
    else
      nil
    end
  end
  def self.all
    @@all
  end
end
