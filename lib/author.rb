class Author

  @@post_count = 0

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count = @@post_count + 1
    post.author = self
  end

  def add_post_by_title(title)
    new_title = Post.new(title)
    @posts << new_title
    @@post_count = @@post_count + 1
    new_title.author = self
  end

  def self.post_count
    @@post_count
  end

end
