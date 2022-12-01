=begin

Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. 
This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.
If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

Examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

input: a string
output: a boolean
rules:
- returns true if string passed in as argument is a palindrome, false otherwise
- method should be case-insensitive
- method should ignore all non-alphanumeric characters

algorithm:
define real_palindrome? method that accepts 1 parameter str
- initialize new variable stripped_str -> assign it to downcased str stripped of all non-alphanumeric characters
- if stripped_str is equal to the reverse of stripped_str:
  -> return true
- else:
  -> return false

=end


def real_palindrome?(str)
  stripped_str = str.downcase.gsub(/\W/, "")
  
  stripped_str == stripped_str.reverse
end


# Test Cases

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false