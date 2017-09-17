require "pry"
class Post
  attr_accessor :title, :author

  def initialize(post_name)
    @title = post_name
  end

  def author_name
    #binding.pry
    if @author == nil
      nil
    else
      self.author.name
    end
  end
end
