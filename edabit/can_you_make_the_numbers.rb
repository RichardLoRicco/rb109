=begin
  
You are given an array representing the number of 0s, 1s, 2s, ..., 9s you have. The function will look like:

can_build([#0s, #1s, #2s, ..., #9s], [num1, num2, ...])
Write a function that returns true if you can build the following numbers using only the digits you have.

----

input: an array denoting the number of 0s, 1s, 2s.. 9s you have, and an array denoting the numbers you want to build
return: true if you can build the following numbers using only the digits you have
rules:

----

algorithm:
- initialize full_digits to []
- iterate over digits with index, and for each digit and index:
  - digit times, add index.to_s to full_digits
- initialize full_build_arr to []
- iterate over arr and for each num:
  - convert num to a string and break it into an array of chars, for each char:
    - add char to full_build_arr
- iterate over full_build_arr so that for all elements:
  - full_digits includes the same count of that digit


=end


def can_build(digits, arr)
  full_digits = []
  digits.each_with_index do |digit, index|
    digit.times { full_digits << index.to_s }
  end

  full_build_arr = []
  arr.each do |num|
    num.to_s.each_char { |char| full_build_arr << char }
  end

  full_build_arr.all? do |element|
    full_build_arr.count(element) <= full_digits.count(element)
  end
end

# Examples
p can_build([0, 1, 2, 2, 3, 0, 0, 0, 1, 1], [123, 444, 92]) == true
# You have: one 1, two 2s, two 3s, three 4s, one 8 and one 9
# Using only these digits, you can build 123, 444, and 92
p can_build([10, 2, 3, 8, 5, 8, 5, 5, 3, 1], [11, 2, 22, 49, 444, 998, 87, 44]) == false
p can_build([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], []) == true
p can_build([0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [3]) == false