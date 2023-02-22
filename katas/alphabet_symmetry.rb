=begin

input: an array of strings
return: an array of the number of letters that occupy their positions in the alphabet for each word
rules:
  - input consists of alphabet characters, both uppercase and lowercase
  - no spaces in input
example:
  - solve(["abode","ABc","xyzD"]) => [4, 3, 1]

----

algorithm:
- intialize alphabet to an array whose elements are "a" through"z"

- iterate through each string in arr and for each DOWNCASSED string transform as follows:
  - initialize correct_position_char_count to 0
  - iterate through each char of that string with index, and for each char and index do the following:
    - if char == alphabet[index], then increment correct_position_char_count by 1
  - return correct_position_char_count

=end


def solve(arr)
  alphabet = ("a".."z").to_a
  
  arr.map do |string|
    correct_position_char_count = 0
    string.downcase.chars.each_with_index do |char, index|
      correct_position_char_count += 1 if char == alphabet[index]
    end
    correct_position_char_count
  end
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

