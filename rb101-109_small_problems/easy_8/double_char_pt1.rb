=begin

Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

----

input: a string
return: a new string in which every character is doubled

----

algorithm:
- split string into an array of chars, and iterate over that array, transforming each char as follows:
  - multiply char by 2
-> join the array


=end

def repeater(string)
  string.chars.map { |char| char * 2 }.join("")
 end
 
 
 p repeater('Hello') == "HHeelllloo"
 p repeater("Good job!") == "GGoooodd  jjoobb!!"
 p repeater('') == ''