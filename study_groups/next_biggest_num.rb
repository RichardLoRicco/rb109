=begin
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

----

inputs: a positive Integer
return: the next bigger number formed by the same digits as the input Integer
rules:
  - if no bigger number can be formed using input integer's digits, return -1
  - if one digit number, return -1
notes:
  - split into digits, then increment into higher numbers while checking if all digits are present

----

algorithm:
- intialize digits to -> convert pos_int into string and split into array of digits
- initialize next_num to -1.

- if digits's size is 1, return -1
- if digits == digits sorted and reversed, then return -1
- loop as follows:
  - increment pos_int by 1
  - if pos_int converted to string, array, includes all digits in digit:
    - reassign next_num to pos_int
    - break
- return pos_int


=end

def next_bigger_num(pos_int)
  digits = pos_int.to_s.chars
  next_num = -1

  return -1 if digits.size == 1
  return -1 if digits == digits.sort.reverse

  loop do 
    pos_int += 1
    if digits.all? { |digit| pos_int.to_s.chars.include?(digit) }
      next_num = pos_int
      break
    end
  end
  pos_int
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
