=begin

Write a method that takes a string with one or more space separated words and returns a hash that 
shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}


input: a string
output: return a hash
rules:
- take string with one or more space separated words and return hash that shows number of words of diff sizes
- words consist of any string of characters that do not include a space.

algorithm:
define word_sizes method that accepts 1 parameter str_of_words
- inialize variable count_of_word_sizes and assign to {}
- spit str_of_words into an array based on spaces -> assign to arr_of_words
- iterate through arr_of_words and for each word
  - find the length, assign to length
  - if count_of_word_sizes has a key equal to length:
    - increment the key's associated value by 1
  - else:
    - create a key value pair where the count is the length of word and the value is 1
- implicitly return count_of_word_sizes

=end

def word_sizes(str_of_words)
  count_of_word_sizes = {}
  arr_of_words = str_of_words.split(" ")
  arr_of_words.each do |word|
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
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}