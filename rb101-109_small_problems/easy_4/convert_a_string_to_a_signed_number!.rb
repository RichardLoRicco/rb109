=begin

In the previous exercise, you developed a method that converts simple numeric strings to Integers.
In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer.
The String may have a leading + or - sign; if the first character is a +, your method should return a 
positive number; if it is a -, your method should return a negative number. 
If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc.
You may, however, use the string_to_integer method from the previous lesson.

Examples
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

----

input: a string of digits, possibly with a leading + or - sign
return: the appropriate number as an integer
rules:
  - if first character is +, return a positive number
  - if first character is -, return a negative number
  - if no sign if given, return a positive number


algorithm:
- initialize STRING_TO_INTEGER_NUMERIC hash with strings "0" through "9" as keys and their associated integers as values
- initialize integer to 0
- initialize multiplier to 10 ** (size of string - 1)
- initialize pos_neg_multiplier to 1
- if string[0] == +, remove from string
- if string[0] == -, remove from string and:
    - reassign pos_neg_multiplier to -1

- iterate through each digit in string and transform each digit as follows:
  - reassign digit to the value for STRING_TO_INTEGER_NUMERIC[digit]
  -> assign this transformed array to string_as_integers

- iterate through string_as_integers and for each digit:
  - reassign digit to the value for STRING_TO_INTEGER_NUMERIC[digit]
  - multiply digit by multiplier and add return value to integer
  - divide multiplier by 10
- return integer * pos_neg_multiplier



=end


STRING_TO_INTEGER_NUMERIC = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9 }


def string_to_signed_integer(string)
  pos_neg_multiplier = 1
  integer = 0

  string = string[1..-1] if string[0] == "+"

  if string[0] == "-"
    string = string[1..-1]
    pos_neg_multiplier = -1
  end

  multiplier = 10 ** (string.size - 1)

  string_as_integers = string.chars.map { |digit| STRING_TO_INTEGER_NUMERIC[digit] }
  string_as_integers

  string_as_integers.each do |digit|
    integer += digit * multiplier
    multiplier /= 10
  end

  integer * pos_neg_multiplier
end


p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
p string_to_signed_integer('4321') == 4321