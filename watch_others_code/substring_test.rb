=begin
Given 2 strings, your job is to find out if there is a substring that appears in both strings. 
You will return true if you find a substring that appears in both strings, and false if not. 

A substring is longer than 1 character.

----

input: 2 strings, string1 and string2
return: true if there is a substring that appears in both strings, false otherwise
rules:
  explicit:
    - a substring is longer than 1 character
  implicit:
    - ignore caps

algorithm:
- initialize last_index to size of string1's size - 1

# iterate through all substrings (size > 1) of string1 and return true if string2 includes any of them
- from 0 up to last_index, do the following for each index1
  - from index1 + 1 up to last_index, do the following for each index2:
    - intialize slice to string1[index1..index2]
    - return true if string2 includes slice
- return false


=end

def substring_test(string1, string2)
  last_index = string1.size - 1
  0.upto(last_index-1) do |index1|
    (index1 + 1).upto(last_index) do |index2|
      slice = string1[index1..index2].downcase
      return true if string2.downcase.include?(slice)
    end
  end
  false
end

puts substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('1234567', '541265') == true