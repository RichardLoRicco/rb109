=begin

Create a function add_letters that takes a list/array of letters a, and returns the "sum" of them.

To add two letters, take their number value, add them together, and convert it back together. 
For example, a would be 1, b would be 2, etc. So to add b and c, take 2 + 3 = 5, and then get the fifth letter of the alphabet (e).

So then d + e + f would be 4 + 5 + 6 = 15, and the fifteenth letter is o, so that's what you return.

Letters can also wrap. Like with y + c, that's 25 + 3 = 28, which doesn't exist. 
Consider that the 27th letter just wraps around and ends back up at a. With this logic, y + c = b. 
Don't just do 27 = 1 though, because you could end up with a much higher sum like 70.

Notes:
Don't forget to return the result.
An empty array should return z. The logic behind this is that if you get a sum of 0, then wrap it all the way 
around backwards (since the 0th letter doesn't exist), giving you 26 which = z.
All letters given will be lowercase.

----

input: an array of string letters, a
return: the "sum" of the letters
rules:
  - to add two letters, take their nmber value, add them together, and convert it back together
    -> basically their value is index + 1
  - letters can wrap -> i.e., a value of 28 doesn't exist, but it is b
  - return the result
  - empty array should return z
  - all letters given will be lowercase

----

algorithm:
- initialize LOWERCASE_ALPHABET to ["a".."z"]
- initialize sum to 0

- iterate over each letter element in arr and for each letter:
  -> add the (letter's index in LOWERCASE_ALPHABET) + 1 to sum

until sum is less than 27, remove 26 from sum

- return letter at index sum - 1 in LOWERCASE_ALPHABET

=end


LOWERCASE_ALPHABET = ("a".."z").to_a

def add_letters(arr)
  sum = 0

  arr.each do |letter|
    sum += LOWERCASE_ALPHABET.find_index(letter) + 1
  end

  until sum < 27
    sum -= 26
  end 

  LOWERCASE_ALPHABET[sum - 1]
end


# Examples
p add_letters(["a"]) == "a"
p add_letters(["a", "b"]) =="c"
p add_letters(["a", "b", "c"]) == "f"
p add_letters(["a", "b", "c", "d", "e", "f"]) == "u"
p add_letters(["y", "a"]) == "z"
p add_letters(["y", "c"]) == "b"
p add_letters(["z", "a"]) == "a"
p add_letters(["x", "y", "z"]) == "w"
p add_letters([]) == "z"