=begin

Write a method that returns a list of all substrings of a string that are palindromic. 
That is, each substring must consist of the same sequence of characters forwards as it does backwards. 
The return value should be arranged in the same sequence as the substrings appear in the string. 
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, 
  but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

Examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


input: a string
output: an array
- returns a lsit of all substrings of input string that are palindromic
rules:
- a palindrome is a substring that consists of the same sequence of characters forwards as it does backwards
- return value should be arranged int he same sequence as the substrings appear in the string
- duplicate palindromes should be included multiple times
- should use the substrings method from the prior exercise
- consider all characters and pay attention to case
- assume that single characters are not palindromes

algorithm:
define method palindromes that accepts 1 parameter string
  initialize substrings_arr and assign to:
    -> return value of invoking the substrings method and passing in string as an argument to it
  iterate over substrings_arr and select each substring that satisfies the following:
    - the substring is the same backwards as it is forwards

=end

def leading_substrings(string)
  substring_arr = []
  slice_length = 1
  loop do
    substring_arr << string.slice(0, slice_length)
    break if slice_length == string.length
    slice_length += 1
  end
  substring_arr
end


def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(string)
  all_substrings = substrings(string)
  all_substrings.select do |substring|
    substring == substring.reverse && substring.length > 1
  end
end


p palindromes('madam') == ['madam', 'ada']
p palindromes('abcd') == []
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]