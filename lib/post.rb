class Post
  attr_accessor :name ,:author ,:title

  def initialize(name)
    @name = name
  end


  def author_name
    if self.author == nil
      nil
    end
    self.author.name
  end

end
