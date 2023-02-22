=begin
take a string as an argument, return the string in reverse order without using the built-in reverse method.

reverse_string("abcde") == "edcba"
reverse_string(" ") == " "
reverse_string("football") == "llabtoof"

----

input: a string
return: the input string in reverse order
rules:
  - can't use the #reverse method

----

algorithm:
- initialize right_index to -1
- initialize left_index to 0
- until left_index > size of string / 2 - 1, do the following:
    - reassign string[left_index] and string[right_index] to each other
    - increment right_index by -1
    - increment left_index by 1
- return string


=end


def reverse_string(string)
  right_index = -1
  left_index = 0
  until left_index > (string.size / 2) - 1
    string[left_index], string[right_index] = string[right_index], string[left_index]
    right_index -= 1
    left_index += 1
  end
  string
end



p reverse_string("abcde") == "edcba"
p reverse_string(" ") == " "
p reverse_string("football") == "llabtoof"