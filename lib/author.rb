class Author

    attr_accessor :name, :posts

    @@post_count = 0


    def initialize(name)
        @posts = []
        @name = name
        @@post_count = @@post_count + 1
    end

    def add_post(postObj) #post object
        @posts << postObj
        postObj.author = self #author object
    end

    def add_post_by_title(postStr)
        newPost = Post.new(postStr)
        #no sense reinventing the wheel:
        add_post(newPost)
    end

    def self.post_count
        Post::all.length
    end

end