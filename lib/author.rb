
class Author
  attr_accessor :name, :posts, :title
  @@post_count = 0
  def initialize(name = nil)
    @name = name
    @posts = []
  end

  def add_post(x)
    @posts << x
    x.author = self
    @@post_count += 1
  end

  def add_post_by_title(x)
    x = Post.new(x)
    @posts << x
    x.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
