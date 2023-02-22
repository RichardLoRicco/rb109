=begin

Write a method that takes a string as an argument and returns a new string in which every uppercase letter 
is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

----

input: a string
return: a new string in which every uppercase letter is replaced by its lowercase version, and
        every lowercase letter by its uppercase version
rules:
  - all other characters should be unchanged
  - can't use String#swapcase

----

algorithm:
- initialize swapcased_string to ""
- split string into an array of chars and iterate over array so that for each char: 
  - if char has a count of 1 when searching for uppercase letters:
    - reassign char to its lowercase equivalent
  - otherwise if char has a count of 1 when searching for lowercase letters:
    - reassign char to its uppercase equivalent
  - add char to swapcased_string
- return swapcased_string

=end

def swapcase(string)
  swapcased_string = ""

  string.chars.each do |char|
    if char.count("A-Z") == 1
      char = char.downcase
    elsif char.count("a-z") == 1
      char = char.upcase
    end
    swapcased_string << char
  end

  swapcased_string
end

# Test Cases:
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'