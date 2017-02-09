class Post
  attr_accessor :author, :title

  def initialize title
    @title = title
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end

end

note = Post.new('Hello')
puts note.author
