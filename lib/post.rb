class Post

  attr_accessor :author, :title

  def initialize(title)
    @title = title

  end

  def author_name
    # p self.author.name
    # feel like dis is it
    if self.author.nil?
      # if nil, return nil. or nothing
      # nil
    else
      self.author.name
    end
  end
end
