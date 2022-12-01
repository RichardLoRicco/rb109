=begin

Write a method that takes a first name, a space, and a last name passed as a single String argument, and 
returns a string that contains the last name, a comma, a space, and the first name.

Examples
swap_name('Joe Roberts') == 'Roberts, Joe'


input: a string
- consists of a first name, a space, and a last name as one string argument
output: return a string
- contains the last name, a comma, a space, and the first name

algorithm:
define swap_name method that accepts 1 parameter name
  split name into an array -> assign to name_arr
  initialize first_name to element at index 0 of name_arr
  initialize last_name to element at index 1 of name_arr
  use string concatentation to implicitly return "last_name, first_name"

=end

def swap_name(name)
  name.split(" ").reverse.join(", ")
end


# Test Case:
p swap_name('Joe Roberts') == 'Roberts, Joe'