class Author
  # has an attr_accessor for name
  attr_accessor :name

  @@post_count = 0

  # is initialized with a name
  # is initialized with an empty collection of posts
  def initialize(name)
    @name = name
    @posts = []
  end

  # has many posts
  def posts
    @posts
  end

  # takes in an argument of a post and adds that post to the author's collection and tells the post that it belongs to that author
  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  # takes in an argument of a post title, creates a new post with it and associates the post and author
  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  # is a class method that returns the total number of posts associated to all existing authors
  def self.post_count
    @@post_count
  end
end
