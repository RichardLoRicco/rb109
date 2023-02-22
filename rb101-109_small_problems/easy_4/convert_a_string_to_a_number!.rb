=begin

The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 
String#to_i and the Integer constructor (Integer()) behave similarly. 
In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. 
You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters;
assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number,
such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result
by analyzing the characters in the string.

Examples
string_to_integer('4321') == 4321
string_to_integer('570') == 570

----

input: a string of digits
return: the appropriate number as an integer
rules:
  - can't use methods listed above
  - don't worry about leading + or - signs or invalid characters
  - assume all characters are numeric

----

algorithm:
- initialize STRING_TO_INTEGER_NUMERIC hash with strings "0" through "9" as keys and their associated integers as values
- initialize integer to 0
- initialize multiplier to 10 ** (size of string - 1)

- iterate through each digit in string and transform each digit as follows:
  - reassign digit to the value for STRING_TO_INTEGER_NUMERIC[digit]
  -> assign this transformed array to string_as_integers

- iterate through string_as_integers and for each digit:
  - reassign digit to the value for STRING_TO_INTEGER_NUMERIC[digit]
  - multiply digit by multiplier and add return value to integer
  - divide multiplier by 10
- return integer



=end


STRING_TO_INTEGER_NUMERIC = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9 }


def string_to_integer(string)
  integer = 0
  multiplier = 10 ** (string.size - 1)

  string_as_integers = string.chars.map { |digit| STRING_TO_INTEGER_NUMERIC[digit] }
  string_as_integers

  string_as_integers.each do |digit|
    integer += digit * multiplier
    multiplier /= 10
  end

  integer
end


# Test Cases
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570