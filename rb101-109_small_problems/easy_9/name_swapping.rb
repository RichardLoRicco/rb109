=begin

Write a method that takes a first name, a space, and a last name passed as a single String argument, and 
returns a string that contains the last name, a comma, a space, and the first name.

Examples
swap_name('Joe Roberts') == 'Roberts, Joe'


input: a string consisting of a first name, a space, and a last name
return: a string that contains the last name, a comma, a space, and the first name

----

algorithm:
- split name into an array (using spaces), then:
  -> reverse the array, then
  -> join the array using a comma and a space

=end

def swap_name(name)
  name.split.reverse.join(", ")
end


# Test Case:
p swap_name('Joe Roberts') == 'Roberts, Joe'