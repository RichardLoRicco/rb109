=begin
Write a method to find the longest common prefix string amongst an array of strings. 
If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

----

input: an array of strings
return: the longest common prefix string amongst the elements of the input array
rules:
  - all inputs are in lowercase letters a-z


----

algorithm:
- initialize current to ""
- intialize longest to ""

- iterate over each char with index in first element of arr, and for each char and index:
  - if index position index of all elements of arr == char,
      - add char to current
  - else:
    - reassign current to ""
  - if current's size > longest's size, reassign longest to current
- return longest

=end

def common_prefix(arr)
  current = ""
  longest = ""
  arr[0].chars.each_with_index do |char, index|
    if arr.all? { |string| string[index] == char }
      current << char
    else
      current = ""
    end
    longest = current if current.size > longest.size
  end
  longest
end

puts common_prefix(["flower", "flow", "fliwht"]) == "fl"
puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"
