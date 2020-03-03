class Post
  attr_accessor :title, :author
  
  def initialize(title)
    @title = title
  end
  
  def author_name
    if @author.to_s == ""
      return nil
    else
      return @author.name
    end
  end
end