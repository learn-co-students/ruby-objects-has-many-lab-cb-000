require 'author'
class Post
  @@all = []
  attr_accessor :author, :title

  def initialize(name)
    @title = name
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author
      return @author.name
    else
      return nil
    end
  end

end
