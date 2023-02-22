=begin

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string 
that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

Examples
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


input: a string
output: a hash containing 3 entries:
  1. number of characters in the string that are lowercase letters
  2. number of characters in the string that are uppercase letters
  3. number of characters that are not letters

algorithm:
define method letter_case_count that accepts 1 parameter, str
  initialize lowercase_count and assign to count of lowercase letters in str
  initialize uppercase_count and assign to count of uppercase letters in str
  initialize non_letter_count and assign to count of non-letter characters in str
  initialize case_count_hash and assign to {}
  - add lowercase: lowercase_count to case_count_hash
  - add uppercase: uppercase_count to case_count_hash
  - add neither: non_letter_count to case_count_hash
  implicitly return case_count_hash

=end

def letter_case_count(str)
  lowercase_chars = str.count("a-z")
  uppercase_chars = str.count("A-Z")
  neither_chars = str.count("^a-zA-Z")
  case_count_hsh = { lowercase: lowercase_chars, uppercase: uppercase_chars, neither: neither_chars }
end


# Test Cases:
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
