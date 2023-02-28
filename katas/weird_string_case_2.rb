=begin

Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all 
even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. 

The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces(' '). 
Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

----

input: a string
return: the same string with all even indexed characters in each word uppercased, and all odd indexed characters
        in each word lowercased
rules:
  - zero index is even (and therefore should be uppercased)
  - input string will only consist of alphabetical characters and spaces
  - spaces will only be present to separate words
  - words will be separated by a single space
notes:
  - iterate over each word and iterate over each char with index, upcasing and downcasing based on the index of that char

----

algorithm:
- split string into an array of words using spaces and transform each word as follows:
  - split word into an array of chars and iterate over it with index so that for each char and index:
    - if index is even, upcase! char
    - if index is odd, downcase! char
  -> join the array of chars
-> join the array of words with spaces

=end

def weirdcase(string)
  string.split(" ").map do |word|
    word.chars.each_with_index do |char, index|
      index.even? ? char.upcase! : char.downcase!
    end.join("")
  end.join(" ")
end


p weirdcase( "String") == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
