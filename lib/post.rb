class Post
  @@post_count = 0

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@post_count += 1
  end

  def author_name
    self.author.name if self.author
  end

  def self.post_count
    @@post_count
  end

end
