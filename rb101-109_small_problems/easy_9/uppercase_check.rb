=begin

Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. 
Characters that are not alphabetic should be ignored.

Examples:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true


input: a string
output: a boolean
- true if all of the alphabetic characters inside input string are uppercase
- false otherwise
rules:
- characters that aren't alphabetic should be ignored

algorithm:
initialize ALPHABET constant and assign a through z to it
initialize ALPHABET_UPPERCASE and assign A through Z to it
define uppercase? method that accepts 1 parameter string
  break string into an array -> assign to array
  iterate over array and for each character, return true if the following is true for all characters:
    - if ALPHABET includes lowercased character, then:
        - ALPHABET_UPPERCASE includes character?
    - else:
        - character

=end

ALPHABET = ("a".."z").to_a
ALPHABET_UPPERCASE = ("A".."Z").to_a

def uppercase?(string)
  array = string.chars
  array.all? do |character|
    ALPHABET.include?(character.downcase) ? ALPHABET_UPPERCASE.include?(character) : character
  end
end

# Test Cases:
p uppercase?('t') == false
p uppercase?('T') == true–
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true