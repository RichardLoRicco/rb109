# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin

input: a string
return: the same sequence of characters with every 2nd character in every 3rd word converted to uppercase
rules:
  - all other characters remain the same
  - assuming that spaces separate words
notes:
  - split into array of words, iterate over with index, then split words into chars and iterate with index
    - upcase 2nd letter of every 3rd word
    -> index of third word will be 2 -> want to add 1 to index then see if divisible by 3
    -> index of 2nd letter will be 1 -> want to check if it is odd

----

algorithm:
- split string into an array of words (using spaces) and iterate over each word with index 
  and transform each word and word_index as follows:
  - split each word into array of chars and iterate over each char with index and transform each char and char_index as follows:
    - if (word_index + 1) is divisible by 3 and char_index is odd:
      - upcase char
    - else:
      - return char
  -> join chars
-> join words with spaces


=end

def to_weird_case(string)
  string.split(" ").each_with_index.map do |word, word_index|
    word.chars.each_with_index.map do |char, char_index|
      if (word_index + 1) % 3 == 0 && char_index.odd?
        char.upcase
      else
        char
      end
    end.join("")
  end.join(" ")
end

# Examples:
p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
# The tests above should print "true".