=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times.
The input string consists of lowercase latin letters. 
Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:
for string
s = "ababab"
the answer is ["ab", 3]

Example #2:
for string

s = "abcde"
the answer is ["abcde", 1]
because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

----

input: a non-empty string, s
return: the minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times
rules:
  - input string consists of only lowercase latin letters
  - function should return an array [t, k]

----

algorithm:
- initialize last_index to size of string - 1
- initialize min_substring to string
- initialize k to 1
- from 0 up to last_index, do the following for each index_1
  - from index_1 up to last_index, do the following for each index_2
    - initialize slice to string[index_1..index_2]
    - initialize multiplier to size of string / size of slice
    - if slice * multiplier == string:
        - if min_substring > slice:
          - reassign min_substring to slice
          - reassign k to multipler
- return [min_substring, k]


=end

def f(string)
  last_index = string.size - 1
  min_substring = string
  k = 1

  0.upto(last_index) do |index_1|
    index_1.upto(last_index) do |index_2|
      slice = string[index_1..index_2]
      multiplier = string.size / slice.size
      if slice * multiplier == string
        if min_substring > slice
          min_substring = slice
          k = multiplier
        end
      end
    end
  end
  [min_substring, k]
end



p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]