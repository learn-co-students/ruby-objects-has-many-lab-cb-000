class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @author = nil
    @@all << self
  end

  def author_name
    if @author != nil
      @author.name
    else
      nil
    end
  end

end
