class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name = "nil")
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(title)
    @@post_count += 1
    @posts << title
    title.author = self
  end

  def add_post_by_title(title)
    @@post_count += 1
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    @@post_count
  end

end
