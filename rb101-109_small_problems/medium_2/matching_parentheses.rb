=begin

Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise.

To be properly balanced, parentheses must occur in matching '(' and ')' pairs.


Note that balanced pairs must each start with a (, not a ).

----

input: a string
  - may include parentheses
output: return a boolean
  - true if all parentheses in the input string are properly balanced
  - false otherwise
rules:
  - to be properly balanced, parentheses must occur in matching '(' and ')' pairs
  - balanced pairs must each start with a (, not a ).

notes:
  - want to know if there is the same number of ( as )
    -> complicating factor though is that the pairs must start with a (, not a ).
    -> maybe we want to look for (, then remove the NEXT ) upon finding it, and finally check if there are any remaining ( or )

----

algorithm:=
define balanced? method that accepts 1 parameter string
  - convert string to an array called array
  - iterate over each char in array with index and for each char:
    - if char == ( and if index is less than the index of the next ),:
      remove both char and ) from array
  - check that array has no ( or )
      -> return true if none, false if there are remaining ( or )

=end

def balanced?(string)
  parens = 0

  string.chars.each do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens == 0
end





# Examples:
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false