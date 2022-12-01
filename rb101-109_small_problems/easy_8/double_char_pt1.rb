=begin

Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''


input: a string
output: a new string
- take every character from input string and double it

algoritm:
define method repeater that accepts 1 parameter string
  split string into an array, and for each character transform as follows:
  - double each character
  join the array
=end

def repeater(string)
  string.split("").map { |char| char * 2 }.join("")
end





p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''