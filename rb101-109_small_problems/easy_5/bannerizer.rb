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


input: a string
output: a string
rules:
- take a short line of text, and print it within a box

algorithm:
define method print_in_box that accepts 1 parameter, str
-output str inside of box

=end

def print_in_box(str)
  puts "+" + "-" * (str.length + 2) + "+"
  puts "|" + " " * (str.length + 2) + "|"
  puts "| " + str + " |"
  puts "|" + " " * (str.length + 2) + "|"
  puts "+" + "-" * (str.length + 2) + "+"
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