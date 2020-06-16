class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    return nil if @author == nil
    return @author.name
  end

end
