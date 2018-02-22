#write your code here
def translate(phrase)
  vowels = %w(a e i o u)
  
  phrase_arr = phrase.split(' ').map! do |word|
    word_arr = word.chars

    if vowels.include?(word[0])
      word + "ay"
    elsif word_arr[0..1] == ["q", "u"]
      new_word = (word_arr << word_arr.shift(2)).flatten.join + "ay"
    elsif (!vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])) || word_arr[1..2] == ["q", "u"]
      new_word = (word_arr << word_arr.shift(3)).flatten.join + "ay"
    elsif (!vowels.include?(word[0]) && !vowels.include?(word[1]))
      new_word = (word_arr << word_arr.shift(2)).flatten.join + "ay"
    else
      new_word = (word_arr << word_arr.shift).flatten.join + "ay"
    end
  end

  phrase_arr.join(' ')
end