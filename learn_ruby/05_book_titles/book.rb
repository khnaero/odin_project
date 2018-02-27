class Book
  attr_reader :title
  # def title
  #   @title
  # end

  def title=(str)
    phrase = str.split
    phrase = [phrase[0].capitalize] + 
    phrase[1..-1].map do |word|
      little = ['the', 'and', 'or', 'in', 'of', 'a', 'an']
      if little.include? word
        word
      else
        word.capitalize
      end
    end
    @title = phrase.join(' ')
  end
end

# @book = Book.new
# @book.title = "war and peace"
# p @book.title
