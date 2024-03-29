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

-----

input: a string
output:
  - return true if string passed in as argument is a palindrome, false otherwise
rules:
  - case-insensitive
  - ignore all alphanumeric characters

algorithm:
define malindrome? method that accepts 1 parameter str
    - returns true if str is palindrome, false if not palindrome

define real_palindrome? method that accepts 1 parameter str
    replace all non-alphanumeric characters in str with "" and downcase str
    -> pass this return value into palindrome? method as an argument


=end

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  palindrome?(str.downcase.gsub(/[^a-z0-9]/, ""))
end



# Test Cases:
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false