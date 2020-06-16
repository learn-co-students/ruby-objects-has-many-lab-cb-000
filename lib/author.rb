class Author
  attr_accessor :name, :posts
  @@authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    number_of_posts = 0
    @@authors.each do |author|
      number_of_posts += author.posts.length
    end
    number_of_posts
  end
end
