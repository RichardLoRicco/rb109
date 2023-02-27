=begin

Create a function that takes a string and returns a string in which each character is repeated once.

Notes:
All test cases contain valid strings. Don't worry about spaces, special characters or numbers. They're all considered valid characters.

----

input: a string
return: a strign in which each character is repeated once
rules:
  - test cases all contain valid strings
  - don't worry about spaces, special characters, or numbers

----

algorithm:
- split string into array of chars and transform each char as follows:
  - return char * 2
-> join returned array with no spaces


=end

def double_char(string)
  string.chars.map { |char| char * 2 }.join("")
end


# Examples
p double_char("String") == "SSttrriinngg"
p double_char("Hello World!") == "HHeelllloo  WWoorrlldd!!"
p double_char("1234!_ ") == "11223344!!__  "