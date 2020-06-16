class Post
  attr_accessor :author, :title, :genre

  def initialize(title)
    @title = title
  end

  def author_name
    return nil if @author == nil
    @author.name
  end


end
