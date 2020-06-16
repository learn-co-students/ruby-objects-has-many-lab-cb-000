class Post

    attr_accessor :title, :author  #author object

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        #check if we have an author object
        #before accessing the property
        if self.author
            self.author.name
        else
            nil
        end
    end

end
