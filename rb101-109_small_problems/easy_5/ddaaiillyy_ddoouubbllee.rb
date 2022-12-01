=begin

Write a method that takes a string argument and returns a new string that contains the value of the original string
with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

input: a string
output: a new string -> contains the value of original string with all consecutive duplicate characters collapsed into single character
rules:
- can't use String#squeeze or String#squeeze!

algorithm:
define crunch method that accepts 1 parameter str
- initialize variable index and assign 0 to it
- initialize variable new_str and assign "" to it
- loop as follows:
  - if str[index + 1] == str[index]:
    -> next
  - else
    -> add str[index] to new_str
  - break out of loop when index = size of str - 1
  - increment index
- implicitly return str


=end


def crunch(str)
  index = 0
  new_str = ""
  loop do
    if str[index + 1] == str[index]
      
    else
      new_str << str[index]
    end
    break if index == (str.size - 1)
    index += 1
  end
  new_str
end


# Test cases:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''