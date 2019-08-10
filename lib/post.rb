class Post
  # has a title
  # belongs to an author
  attr_accessor :title, :author

  # is initialized with an argument of a title
  def initialize(title)
    @title = title
  end

  # knows the name of its author
  # returns nil if the post does not have an author
  def author_name
    self.author ? self.author.name : nil 
  end
end
