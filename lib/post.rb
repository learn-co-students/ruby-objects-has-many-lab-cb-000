class Post

  @@all = []

  attr_accessor :title

  def initialize(title)
    @title = title
    @@all << self
    @author = nil
  end

  def self.all
    @@all
  end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def author_name
    @author == nil ? nil : @author.name
  end


end
