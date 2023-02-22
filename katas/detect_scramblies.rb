=begin

input: two strings (str1 and str2)
return: true if a portion of str1 characters can be rearranged to match str2
  - otherwise, false
rules:
  - only lowercase letters will be used
  - no punctuation or digits will be used
  - consider performance (probably disregard this)
  
----

algorithm:
- split s2 into an array of chars -> assign to s2_chars

- iterate over s2_chars and for all chars, the following is true:
  - s1 converted to an array includes char

=end


def scramble(s1,s2)
  s2.split("").all? { |char| s1.split("").include?(char) }
end

# failed performance test but satisfied examples