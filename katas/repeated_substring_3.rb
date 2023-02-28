=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal 
to t repeated k times. The input string consists of lowercase latin letters. 

Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:
for string s = "ababab"
the answer is ["ab", 3]

Example #2:
for string s = "abcde"
the answer is ["abcde", 1] because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

----

input: a nonempty string, s
return: an array containing the minimum substring t and the maximum number k, such that the entire 
        string s is equal to t repeated k times
rules:
  - input string consists of lowercase latin letters
  - function should return an array [t, k]

----

algorithm:
- initialize substrings to []
- initialize last_index to size of string - 1
- initialize string_size to size of string
- from 0 up to last_index, do the following for each index1:
  - from index1 up to last_index, do the following for each index2:
    - initialize substring to string[index1..index2]
    - initialize multiplier to string_size / size of substring
    - add substring to substrings array if substring * multiplier == string
- sort substrings and return smallest substring
  -> assign to t
- initialize k to string_size / t's size
- return [t, k]


=end

def f(string)
  substrings = []
  last_index = string.size - 1
  string_size = string.size

  0.upto(last_index) do |index1|
    index1.upto(last_index) do |index2|
      substring = string[index1..index2]
      multiplier = string_size / substring.size
      substrings << substring if substring * multiplier == string
    end
  end

  t = substrings.sort_by { |substring| substring.size }[0]
  k = string_size / t.size
  [t, k]
end
p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
