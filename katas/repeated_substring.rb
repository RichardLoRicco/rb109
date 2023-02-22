=begin

input: a non-empty string, s
return: a minimum substring, t, and the maximum number, k, such that the entire string s is equal
        to t repeated k times
rules:
  - input string consists of lowercase latin letters
  - function should return an array [t, k]
examples:
  - "ababab" => ["ab", 3]
  - "abcde" => ["abcde", 1]

----

algorithm:
1. create a list of all substrings that when multiplied can equal s
- initialize substrings to []
- initialize last_index to size of s - 1
- s_size

- from 0 to last_index, for each index1:
  - from index1 to last_index, for each index2:
    - initialize slice to s[index1..index2]
    - initialize slice_size to size of slice
    - add slice to substrings if slice * (slice_size / s_size) = s
  
2. # find smallest substring and the necessary multiplier
- smallest_substring = smallest subarray in subarrays
  -> sort by min and return substring at index 0
  -> substring_size = size of substring
  -> multiplier = s_size / substring_size
- return [smallest_substring, multiplier]
=end

def f(s)
  substrings = []
  last_index = s.size - 1
  s_size = s.size
  
  0.upto(last_index) do |index1|
    index1.upto(last_index) do |index2|
      slice = s[index1..index2]
      slice_size = slice.size
      substrings << slice if slice * (s_size / slice_size) == s
    end
  end
  
  smallest_substring = substrings.sort_by { |substring| substring.size }[0]
  substring_size = smallest_substring.size
  multiplier = s_size / substring_size
  [smallest_substring, multiplier]
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]