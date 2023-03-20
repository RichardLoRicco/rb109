
=begin
Given 2 strings, your job is to find out if there is a substring that appears in both strings. You will return true if you find a substring that appears in both strings, and false if not. A substring is longer than 1 character.

----

input: 2 strings, str1 and str2
return: true if a substring appears in both input strings, false if not
rules:
  - a substring must be longer than 1 char 
  - ignore case -> probably want to downcase at some point when checking
  - assuming substring must be contiguous
  - empty strings will return false -> not longer than 1 char 

----

algorithm:
# create an array of all substrings with size > 1 in str1 -> downcase all substrings
- initialize str1_substrings to empty array 
- initialize last_index to size of str1 - 1
- 0 up to last_index, for each index1 do the following:
  - from index1 up to last_index for each index2 do the following:
    - initialize slice to str1[index1..index2] downcased
    - add slice to str1_substrings if size of slice is greater than 1
- TEST FOR SUBSTRINGS

# check if any substrings are included in str2 downcased
- iterate over str1_substrings and return true if any substring satisfies the following: (#any? method)
    - does str2 downcased include substring

=end

def substring_test(str1, str2)
  str1_substrings = []
  last_index = str1.size - 1

  0.upto(last_index) do |index1|
    index1.upto(last_index) do |index2|
      slice = str1[index1..index2].downcase 
      str1_substrings << slice if slice.size > 1
    end
  end

  str1_substrings.any? do |substring|
    str2.downcase.include?(substring)
  end
end

puts substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('134567', '451265') == true
