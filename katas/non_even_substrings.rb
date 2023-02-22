=begin

input: a string of integers
return: the number of odd-numbered substrings that can be formed
examples:
  - "1341" => 7 (the odd numbers substrings are 1, 1, 3, 13, 41, 341, 1341)
  
----

algorithm:
- initialize odd_substrings to empty array
- initialize last_index to size of s - 1

- from 0 up to last_index do the following for each index1:
  - index1 up to last_index do the following for each index:2
    - initialize substring to s[index1..index2] converted to an integer
    - add substring to odd_subtrings if substring is odd
- return the count of elements in odd_substrings array

=end



def solve(s) 
  odd_substrings = []
  last_index = s.size - 1
  
  0.upto(last_index) do |index1|
    index1.upto(last_index) do |index2|
      substring = s[index1..index2].to_i
      odd_substrings << substring if substring.odd?
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
