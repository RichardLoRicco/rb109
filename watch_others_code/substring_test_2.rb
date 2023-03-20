=begin
Given 2 strings, find out if there is a substring that appears in both strings. 

Return true if you find a substring that appears in both strings, or false if not.

Only consider substrings that are longer than one letter long. 

----

input: 2 strings (str1 and str2)
return: true if substring w/ length more than 1 char appears in both strings, false if not  
  - return boolean
rules:
  - only consider substrings longer than 1 char
  - if both strings are empty, return false
  - case sensitivity matters
note: create array of all substrings with 2 or more chars in str1, iterate over it and return true if str2 includes any of those substrings

----

algorithm:
- initialize substrings to []
- initialize last_index_str1 to size of str1 - 1

# find all substrings w/ length > 2
- from 0 up to last_index_str1, do the following for each index1
  - from index1 up to last_index_str1, do the following for each index2
    - intialize substring to str1[index1..index2]
    - add substring to substrings array if size of substring > 1
    *test*

# iterate over substrings array, and check whether the following is true for any substr: (#any? method)
  - does str2 include substr?


=end

def substr_test(str1, str2)
  substrings = []
  last_index_str1 = str1.size - 1

  # find all substrings in str1 w/ size > 1
  0.upto(last_index_str1) do |index1|
    index1.upto(last_index_str1) do |index2|
      substring = str1[index1..index2]
      substrings << substring if substring.size > 1
    end
  end
  
  # iterate over substrings and check if any substring is in str2
  substrings.any? { |substr| str2.include?(substr) }

end



p substr_test('Something', 'Fun') == false 
p substr_test('Something', 'Home') == true
p substr_test('Something', '') == false
p substr_test('', 'Something') == false
p substr_test('Banana', 'banana') == true
p substr_test('test', 'lllt') == false
p substr_test('', '') == false
p substr_test('1234567', '541256') == true
p substr_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
