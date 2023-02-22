=begin

Write a method that takes a string argument and returns a new string that contains the value of the original string
with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

----

input: a string
return: a new string that contains the value of the original string with all consecutive duplicate characters
        collapsed into a single character
rules:
  - can't use String#squeeze or String@squeeze!

----

algorithm:
- initialize crunched_string to ""

- iterate through each char in string and for each char:
  - add char to crunched_string unless the character at the last index position of crunched_string is the same as char

- return char

=end

def crunch(string)
  crunched_string = ""
  string.chars { |char| crunched_string << char unless char == crunched_string[-1] }
  crunched_string
end



# Examples:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''