=begin
Write Number in Expanded Form

You will be given a number and you will need to return it as a string in Expanded Form. 

For example:
expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

----

input: an number
return: the input as a string in expanded form
  -> basically, break the number's digits up and include correct amount of zeros depending on value of digit
  -> include commas between each digit
rules:
  - if digit is zero, don't include in expanded form
  - input number will be a whole number greater than 0
notes:
  - split number into digits (string then array)
  - add zeros based on number of digits -> use a multplier and increment
  - remove all zeros
  - join array with commas

----

algorithm:
- initialize multiplier to 10 ** size of number converted to string  - 1
- initialize digits_arr to -> convert number into string then array of chars, map over each char as follows:
    - multiply char by multiplier
    - increment mulitplier by dividing it by 10
    - return char
    TEST HERE

- remove any elements in digits_arr that are zero
- join digits_arr with commas

=end



def expanded_form(number)
  multiplier = 10 ** (number.to_s.size - 1)
  digits_arr = number.to_s.chars
  digits_arr.map! do |digit|
    digit = digit.to_i
    digit *= multiplier
    multiplier /= 10
    digit.to_s
  end

  digits_arr.select { |digit| digit.to_i > 0 }.join(" + ")
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'