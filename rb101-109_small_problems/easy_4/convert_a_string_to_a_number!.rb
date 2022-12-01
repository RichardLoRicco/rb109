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


input: a string
output: an integer
rules:
- returns the input string as an integer
- can't use String#to_i or Integer()
- assume all characters will be numeric

algorithm:
- initialize a constant STRING_TO_INTEGER_DIGITS and assign to it a hash object with keys
  "0" through "9" and associated values 1 through 9

define string_to_integer method that accepts 1 parameter str
- split str into an array -> save as str_digit_arr
- iterate through digit_arr and transform each digit: -> assign to int_digit_arr
  -> STRING_TO_INTEGER_DIGITS[digit] --> this will return the associated value for each key
- intialize new variable str_as_int to 0.
- initialize new variable multiply_10_by_this and assign to it the length of int_digit_arr - 1
- Iterate through int_digit arr and for each digit:
  -> multiply each digit by 10 ** multiply_10_by_this and add to str_as_int
  -> subtract 1 from multiply_10_by_this
- return str_as_int

=end


STRING_TO_INTEGER_DIGITS = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9 }

def string_to_integer(str)
  str_digit_arr = str.split("")
  int_digit_arr = str_digit_arr.map { |digit| STRING_TO_INTEGER_DIGITS[digit] }

  str_as_int = 0
  multiply_10_by_this = str_digit_arr.length - 1

  int_digit_arr.each do |digit|
    str_as_int += digit * (10 ** multiply_10_by_this)
    multiply_10_by_this -= 1
  end
  str_as_int
end



# Test Cases
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570