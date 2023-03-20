=begin
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

For n = 152, the output should be 52;

For n = 1001, the output should be 101.



input: integer, n 
return: the max number obtained by deleting one digit from input number, n
  - integer
rules:
  - 0 can be the digit removed
notes:
- build out an array of all potential numbers where one digit is removed
  - sort that array and return the max

-----

algorithm:
delete digit at each index, and check the resulting num
- initialize potential_numbers to []
- initialize digits -> convert n into string and then into array
- iterate over each digit in digits with index, and for each digit and index:
  - initialize sub_digits to digits.dup
  - delete index position index of subdigits
  - add sub_digits joined and converted to integer to potential_numbers

- sort potential_numbers and return the last index position

=end

def delete_digit(n)
  potential_numbers = []
  digits = n.to_s.chars
  
  digits.each_with_index do |digit, index|
    subdigits = digits.dup
    subdigits.delete_at(index)
    subdigits
    potential_numbers << subdigits.join("").to_i
  end

  potential_numbers.sort[-1]
end

p delete_digit(791983) == 91983
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1