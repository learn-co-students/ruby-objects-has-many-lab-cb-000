class Author
  attr_accessor :posts, :name
  @@post_count = 0

  def initialize(name)
    @posts = []
    @name = name
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)

    post = Post.new(title)
    self.add_post(post)
    return post

  end

  def self.post_count
    @@post_count
  end


end
