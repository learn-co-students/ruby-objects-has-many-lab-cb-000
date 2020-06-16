require 'pry'

class Post

  attr_accessor :author, :title, :name

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author == nil
      return nil
    else
      self.author.name
    end
  end

end
