#write your code here
def echo(word)
  "#{word}"
end

def shout(word)
  "#{word.upcase}"
end

def repeat(word, num=2)
  [word] * num * " "
end

def start_of_word(word, num)
  word[0..(num - 1)]
end

def first_word(phrase)
  phrase.split(' ')[0]
end

def titleize(title)
  words = title.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end