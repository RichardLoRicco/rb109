=begin

Write a method that takes a string as an argument and returns a new string in which every uppercase letter 
is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


input: a string
output: a new string
  - every uppercase letter is replaced by its lowercase version
  - every lowercase letter is replaced by its uppercase version
  - all other characters remain unchanged
rules:
- can't use String#swapcase

algorithm:
create array of uppercase letters -> UPPERCASE_LETTERS
create array of lowercase letters -> LOWERCASE_LETTERS

define swapcase method that accepts 1 parameter string
  split string into an array of characters, assign to characters
  iterate over characters, and for each character destructively transform as follows:
    - if LOWERCASE_LETTERS includes character, replace with uppercase 
    - if UPPERCASE_LETTERS includes character, replace with lowercase
    - if neither, remain as is
  join characters into a string

=end

UPPERCASE_LETTERS = ("A".."Z").to_a
LOWERCASE_LETTERS = ("a".."z").to_a

def swapcase(string)
  characters = string.split("")
  characters.map! do |character|
    if UPPERCASE_LETTERS.include?(character)
      character.downcase
    elsif LOWERCASE_LETTERS.include?(character)
      character.upcase
    else
      character
    end
  end
  characters.join("")
end



# Test Cases:
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'