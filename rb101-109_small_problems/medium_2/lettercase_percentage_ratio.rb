=begin

In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, 
as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string 
that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

----

input: a string
output: return a hash that contains 3 entries:
  1. percentage of characters in the string that are lowercase letters
  2. percentage of characters in the string that are uppercase letters
  3. the percentage of characters that are neither lowercase nor uppercase letters
rules:
  - assume that the string will always contain at least one character

----

algorithm:
define letter_percentages method that accepts 1 parameter, string
  initialize total_chars to size of string
  initialize letter_percentages_hsh to {}

  count number of lowercase letters in string:
    - add lowercase: as key and the result from dividing count by total_chars as value to letter_percentages_hsh

  count number of uppercase letters in string:
  - add uppercase: as key and the result from dividing count by total_chars as value to letter_percentages_hsh

  count number of non-letters in string:
    - add neither: as key and the result from dividing count by total_chars as value to letter_percentages_hsh

  return letter_percentages_hsh

=end

def letter_percentages(string)
  total_chars = string.size
  letter_percentages_hsh = Hash.new(0)
  
  lowercase_count = string.count('a-z') 
  lowercase_percentage = lowercase_count.to_f / total_chars.to_f * 100
  letter_percentages_hsh[:lowercase] = lowercase_percentage

  uppercase_count = string.count('A-Z')
  uppercase_percentage = uppercase_count.to_f / total_chars.to_f * 100
  letter_percentages_hsh[:uppercase] = uppercase_percentage

  neither_count = string.count('^a-zA-Z')
  neither_percentage = neither_count.to_f / total_chars.to_f * 100
  letter_percentages_hsh[:neither] = neither_percentage

  letter_percentages_hsh

end



# Examples:
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }