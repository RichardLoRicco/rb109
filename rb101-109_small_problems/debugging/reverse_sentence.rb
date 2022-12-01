=begin
The reverse_sentence method should return a new string with the words of its argument in reverse order, without using any of Ruby's 
built-in reverse methods. However, the code below raises an error. Change it so that it behaves as expected.

=end
def reverse_sentence(sentence)

=begin
The error occurs on line 12. We are attempting to add the string object at index i of the word array to the reversed_words array, but we need to
include brackets around words[i] so we can add it to the array, otherwise we are just adding a string object and an array object together, which
is what prompted the TypeError. 


=end

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')