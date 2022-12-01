=begin

Write a method that takes a string, and returns a new string in which every consonant character is doubled. 

Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""


input: a string
output: a new string
- every consonant character is doubled


algoritm:
initialize CONSONANTS to an array of consonants
define method repeater that accepts 1 parameter string
  split string into an array, and for each character transform as follows:
  - double each character if character a consonant --> account for uppercase by downcasing when checking
  join the array
=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  doubled_array = string.split("").map do |char| 
    if CONSONANTS.include?(char.downcase)
      char * 2 
    else
      char
    end
  end
  doubled_array.join("")
end





p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""