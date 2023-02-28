=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

----

input: a string of integers (digits)
return: the number of odd-numbered substrings that can be formed
examples:
  - solve("1341") = 7 -> (1, 1, 3, 13, 41, 341, 1341)
rules:
  - substrings must be consecutive in same order as input string
  - can be 1 character long

----

algorithm:
- initialize odd_substrings to []
- initialize last_index to size of digits - 1
- from 0 up to last_index, do the following for each index1
  - from index1 up to last index, do the following for each index2
    - initialize substring to digits[index1..index2]
    - if substring.to_i is odd, add substring to odd_substrings
- return size of odd_substrings

=end

def solve(digits)
  odd_substrings = []
  last_index = digits.size - 1
  0.upto(last_index) do |index1|
    index1.upto(last_index) do |index2|
      substring = digits[index1..index2]
      odd_substrings << substring if substring.to_i.odd?
    end
  end
  odd_substrings.size
end


p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
