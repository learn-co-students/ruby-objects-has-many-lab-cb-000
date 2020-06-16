class Post

  attr_accessor :title, :author
  attr_reader

  def initialize(title)
    @title = title
  end

  def author_name
    if @author == nil
      return nil
    else
      return author.name
    end
  end

end
