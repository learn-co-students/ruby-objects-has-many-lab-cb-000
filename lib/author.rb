class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    # tells the post that it belongs to that author's instance
    @@post_count += 1
  end

  @@post_count = 0

  def self.post_count
    @@post_count
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    self.posts << post
    @@post_count += 1
  end

end

# learn /spec/author_spec.rb
class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end
