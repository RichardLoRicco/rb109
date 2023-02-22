# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin

input: a string
return: the same sequence of characters with every 2nd character in every third word converted to uppercase
rules:
  - other characters should remain the same

----

algorithm:

convert string into an array --> words

iterate over words with index, and for each word and w_index, do the following:
  - if (w_index + 1) is evenly divisible by 3:
      - iterate over the characters in word with index and for each char and c_index:
        - if c_index is odd, replace char with its uppercase equivalent
join words with spaces

=end

def to_weird_case(string)
  words = string.split(" ")

  words.each_with_index do |word, w_index|

    if (w_index + 1) % 3 == 0 && !w_index.zero?

      word.chars.each.with_index do |char, c_index|
        word[c_index] = word[c_index].upcase if c_index.odd?
      end

    end

  end
  words.join(" ")
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