=begin

Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
The ASCII string value is the sum of the ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

Examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0


input: a string
output: an integer
rules:
- determine and return the ASCII string value of a string that is passed in as an argument
- this ASCII string value is the sum of the ASCII values of every character in the string
- permitted to use String#ord to determine the ASCII value of a character

algorithm:
define ascii_value method that accepts 1 parameter `str`
- initialize variale ascii_sum and assign 0 to it
- split str into an array and iterate through it... for each char:
  - add the integer ordinal of that char to sum
- implicitly return sum

=end

def ascii_value(str)
  ascii_sum = 0
  str.split("").each { |char| ascii_sum += char.ord }
  
  ascii_sum
end


# Test Cases
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0