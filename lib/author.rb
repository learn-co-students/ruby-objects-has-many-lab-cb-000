class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  @@counter = 0

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@counter += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@counter += 1
  end

  def self.post_count
    @@counter
  end




end
