class Book
# write your code here
  def title=(title)
    capTitle = title.split.map do |word|
      if !%w(the a an and in of).include?(word)
        word.capitalize
      else
        word
      end
    end
    capTitle.first.capitalize!
    @title = capTitle.join(" ")
  end

  def title
    @title
  end
end

