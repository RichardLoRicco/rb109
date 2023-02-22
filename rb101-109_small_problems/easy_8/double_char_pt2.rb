=begin

Write a method that takes a string, and returns a new string in which every consonant character is doubled. 

Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""


input: a string
return: a new string in which every consonant character is doubled
rules:
  - vowels, digits, punctuation, and whitespace should not be doubled

----

algorithm:
- initialize CONSONANTS to array [ b c d f g h j k l m n p q r s t v w x y z ] 

- split string into an array of chars and transform that array so that each char is transformed as follows:
  - if CONSONANTS includes char downcased, then multiply char by 2
  - otherwise, return char
-> join the array 


=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  string.chars.map do |char|
    if CONSONANTS.include?(char.downcase)
      char * 2
    else
      char
    end
  end.join("")
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""