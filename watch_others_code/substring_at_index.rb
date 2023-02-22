=begin
Write a method that will return a substring based on specified indices.

----

input: a string and two integers
  - first integer is start_index
  - second integer is end_inding
return: a substring of string based on the start_index and end_index

----

algorithm:

- take a slice of string from start_index and ending at end_index
  -> give end_index a default value of start_index

=end

def substring(string, start_index, end_index = start_index)
  string[start_index..end_index]
end

p substring("honey", 0, 2) == "hon"
p substring("honey", 1, 2) == "on"
p substring("honey", 3, 9) == "ey"
p substring("honey", 2) == "n"