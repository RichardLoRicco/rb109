=begin

Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

Examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

input: a string
output: a boolean
rules:
- returns true if string passed as argument is a palindrome, otherwise false
- a palindrome reads the same forward and backward
- case, punctuation, and spaces matter

algorithm:
define palindrome? method that accepts 1 parameter str
- str == the reverse of str

=end

def palindrome?(str)
  str == str.reverse
end


# Test Cases:
p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true