class Author

  @@all_posts = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end


  def add_post(post)
    @posts << post
    @@all_posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@all_posts << post
  end

  def posts
    @posts
  end


  def post_count
    @posts.size
  end

  def self.post_count
    @@all_posts.size
  end

end
