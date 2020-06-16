require 'pry'

class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title = nil)
    @title = title
    @@all << self
  end

  def author_name
    author ? author.name : nil
  end
end
