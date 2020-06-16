class Post
  attr_accessor :title, :author

  def initialize(title)
    @title=title
  end

  def author_name

    #Using ternary syntax
    (self.author ? self.author.name : nil)

    #If/else statements work too
    #if self.author != nil
      #self.author.name
    #else
      #nil
    #end

  end


end
