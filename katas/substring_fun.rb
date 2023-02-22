=begin

input: an array of words (strings)
return: concatenant the nth letter from each word to construct a new word, which is returned as a string
rules:
  - n is the position of the word in the list
example:
  -> ["yoda", "best", "has"]  -->  "yes"
       ^        ^        ^
       n=0     n=1     n=2

----

algorithm:
- initialize new_word to ""

- iterate over words with index and for each word and index
  -> add the char at index position index for that word to new_word

- return new_word

=end



def nth_char(words)
  new_word = ""
  
  words.each_with_index { |word, index| new_word << word[index]}
  
  new_word
end


p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
