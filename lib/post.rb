require 'pry'

class Post
  attr_accessor :posts, :author, :title

  def initialize(post = nil)
    @posts = post
    @title = post
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
    end
end
