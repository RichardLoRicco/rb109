=begin

Write a method that will take a short line of text, and print it within a box.

Example:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.


----

input: a string
print: input string within a box

----

initialize length to length of string
initialize top_bottom 
initialize spacing
initialize middle to include string

output top_bottom
output spacing
output middle to include string
output spacing
output top_bottom 

=end

def print_in_box(string)
  length = string.length
  top_bottom = "+-" + "-" * length + "-+"
  spacing = "| " + " " * length + " |"
  middle = "| " + string + " |"

  puts top_bottom
  puts spacing
  puts middle
  puts spacing
  puts top_bottom
end

# Test Cases:
print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+