class Author
  attr_accessor :name

  @@post_count = 0

  def self.post_count
    @@post_count
  end

  def initialize name
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post post
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title title
    new_post = Post.new title
    add_post new_post
  end
end
