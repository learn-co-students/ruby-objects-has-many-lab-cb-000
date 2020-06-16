class Author
  attr_accessor :posts, :name

  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@posts.length
  end
end
