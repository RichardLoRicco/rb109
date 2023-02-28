=begin

Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the 
given string of digits.

For example:
greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

----

input: a string of digits
return: the greatest product of 5 consecutive digits in the input digits string
rules:
  - input string always has more than 5 digits
example:
  - greatestProduct("123834539327238239583") -> should return 3240 (3 * 9 * 5 * 8 * 3)

----

algorithm:
# create array of all combinations of 5 element digits
- initialize five_element_digits to []
- initialize last_index to size of digits -1
- from 0 up to last_index - 4, for each index1 do the following:
  - add digits[index1, 5] to five_element_digits


# transform each array by the sum and return the highest sum
- iterate over five_element_digits and transform each digit as follows:
  - split into array of chars, convert each char to integer, and return sum
    -> sort the returned array and return the last element


=end

def greatest_product(digits)
  five_element_digits = []
  last_index = digits.size - 1
  0.upto(last_index-4) do |index1|
    five_element_digits << digits[index1, 5]
  end

  five_element_digits.map do |substring|
    substring.chars.map(&:to_i).reduce(:*)
  end.sort[-1]
end


p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0
