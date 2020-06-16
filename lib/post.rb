class Post
  attr_accessor :title, :author

  def initialize(title) #=> Creates a new instance of a post with a title.
    @title = title
  end

  def author_name #=> Returns the artist's name of the song || Nil if the song has no artist.
    @author != nil ? self.author.name : nil
  end

end
