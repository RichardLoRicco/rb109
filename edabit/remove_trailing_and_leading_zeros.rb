=begin

Create a function that takes in a number as a string n and returns the number without trailing and leading zeros.

Trailing Zeros are the zeros after a decimal point which don't affect the value (e.g. the last three zeros in 3.4000 and 3.04000).
Leading Zeros are the zeros before a whole number which don't affect the value (e.g. the first three zeros in 000234 and 000230).

Notes:
Return a string.
If you get a number with .0 on the end, return the integer value (e.g. return "4" rather than "4.0").
If the number is 0, 0.0, 000, 00.00, etc... return "0".

----

input: a number as a string, n
return: the number without the trailing and leading zeros
rules:
  - return a string
  - if number is 0, 0.0, 000, 00.00, etc. return "0"

----

algorithm:
- convert n to a float
  -> assign to n_float
- if n_float == n_float converted to an integer, convert n_float to an integer then a string
- otherwise convert n_float to a string


=end

def remove_leading_trailing(n)
  n_float = n.to_f
  n_float == n_float.to_i ? n_float.to_i.to_s : n_float.to_s
end


# Examples
p remove_leading_trailing("230.000") == "230"
p remove_leading_trailing("00402") == "402"
p remove_leading_trailing("03.1400") == "3.14"
p remove_leading_trailing("30") == "30"



