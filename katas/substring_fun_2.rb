=begin
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is 
the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.

----

input: an array of words
return: a new word consisting of the nth letter from each word in the input array
  - n is the position of the word in the list

----

algorithm:
- initialize new_word to ""
- iterate over each word in words with index, and for each word and index:  
  - add word[index] to the end of ""
- return new_word

=end

def nth_char(words)
  new_word = ""
  words.each_with_index do |word, index|
    new_word << word[index]
  end
  new_word
end


p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
