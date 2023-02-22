# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin

input: a string
return: the same sequence of characters with every 2nd character in every 3rd word converted to uppercase
rules:
  - all other characters should remain the same

----

algorithm:
- split string into an array of words, and iterate over each word and index_w, transforming each word as follows:
  - if index_w + 1 is evenly divisible by 3:
    - split word into an array of chars, and iterate over each char and index_c, transforming each char as follows:
      - if char's index + 1 is evenly divisible by 2, 
        - upcase char
      - otherwise, 
        - return char
    - join transformed array of chars into a word
  - else:
    - return word
- join transformed array using spaces into a string


=end

def to_weird_case(string)
  string.split.each_with_index.map do |word, index_w|
    if (index_w + 1) % 3 == 0
      word.chars.each_with_index.map do |char, index_c|
        if (index_c + 1) % 2 == 0
          char.upcase
        else
          char
        end
      end.join("")
    else
      word
    end
  end.join(" ")
end



# Examples:
p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
# The tests above should print "true".