=begin

Write a function that takes a string as an argument and returns the left most digit in the string.

Notes:
Each string will have at least two numbers.
Return the result as an integer.

----

input: a string
return: the left most digit in the string
rules:
  - each string has at least 2 numbers
  - return the result as an integer

----

algorithm:
- scan the string for any string digits and put result in an array (#scan method)
  -> return the first index position element -> convert it to an integer!

=end

def left_digit(string)
  string.scan(/[0-9]/)[0].to_i
end



# Examples
p left_digit("TrAdE2W1n95!") == 2
p left_digit("V3r1ta$") == 3
p left_digit("U//DertHe1nflu3nC3") == 1
p left_digit("J@v@5cR1PT") == 5