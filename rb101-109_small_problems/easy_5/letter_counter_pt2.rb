=begin

Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.
For instance, the length of "it's" is 3, not 4.

Examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}


=end

def word_sizes(str_of_words)
  count_of_word_sizes = {}
  arr_of_words = str_of_words.split(" ")

  arr_of_words.each do |word|
    word = word.gsub(/[^a-zA-Z]/, "")
    length = word.length
    if count_of_word_sizes.keys.include?(length)
      count_of_word_sizes[length] += 1
    else
      count_of_word_sizes[length] = 1
    end
  end
  count_of_word_sizes
end


# Test Cases:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}