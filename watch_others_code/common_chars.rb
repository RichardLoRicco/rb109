=begin
Given an array of strings made only from lowercase letters, return an array of all characters that show up in all
strings within the given array (including duplicates). 
For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three 
times in the final answer.

----

input: an array of strings (consisting of only lowercase letters)
return: an array of all characters that show up in all strings within input array (including duplicates)
  - ex) if char occurs 3 times in all strings but not 4 times, include that char 3 times in final answer
rules:
  - if no chars are in all strings, return empty array

----

algorithm:
- intialize char_arr to []
- intialize first_element to arr[0]
- intialize other_elements to arr[1..-1]
- iterate through each char of first_element and for each char:
    - if all elements of other_elements include char:
      - iterate over each string in other_elements and for each string:
        - use #sub! to replace char with "" for each element
      - add char to char_arr
- return char_arr

=end


def common_chars(arr)
  char_arr = []
  first_element = arr[0]
  other_elements = arr[1..-1]

  first_element.each_char do |char|
    if other_elements.all? { |string| string.include?(char) }
      other_elements.each { |string| string.sub!(char, "") }
      char_arr << char
    end
  end
  char_arr
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []
