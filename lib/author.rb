class Author
  attr_reader :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = Array.new
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    self.add_post(Post.new(title))
  end

  def self.post_count()
    return @@post_count
  end
end
