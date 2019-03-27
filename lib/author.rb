class Author
    @@all_posts = []
    attr_accessor :name
    def initialize(name)
      @name = name
      @posts = []
    end
    def posts
      @posts
    end
    def add_post(post_variable)
      @posts << post_variable
      @@all_posts << post_variable
      post_variable.author = self
    end
    def add_post_by_title(post_title)
      post_variable = Post.new(post_title)
      post_variable.author = self
      @posts << post_variable
      @@all_posts << post_variable
    end
    def posts_for_author
      @posts
    end
    def post_count_for_author
      @posts.count
    end
    def self.posts
      @@all_posts
    end
    def self.post_count
      @@all_posts.count
    end
  end
