=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

----

input: a string of integers
return: the number of odd-numbered substrings that can be formed

----

algorithm:
- initialize last_index to size of str - 1
- intialize odd_substrings to []
- from 0 up to last_index, do the following for each index1:
  - from index1 up to last_index, do the following for each index2:
    - initialize slice to str[index1..index]
    - add slice to odd_substrings if slice converted to an integer is odd
- return the size of odd_substrings

=end

def solve(str)
  last_index = str.size - 1
  odd_substrings = []

  0.upto(last_index) do |index1|
    index1.upto(last_index) do |index2|
      slice = str[index1..index2]
      odd_substrings << slice if slice.to_i.odd?
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