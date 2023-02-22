# Write a method that takes a string and returns a boolean indicating if this string has a balanced set of parentheses.

=begin

input: a string
return: a boolean indicating if this string has a balanced set of parentheses

----

algorithm:
- initialize count to 0
- split string into an array of chars, and iterate over each char as follows:
  - if char == '(', increment count by 1
  - if char == ')', increment count by -1
  - if count < 0, return false
- count == 0 ?

=end

def balancer(string)
  count = 0
  string.chars.each do |char|
    if char == '('
      count += 1
    elsif char == ')'
      count -= 1
    end
    return false if count < 0
  end
  count.zero?
end


p balancer("(hi") == false
p balancer("(hi)") == true
p balancer("(()) hi") == true
p balancer(")(") == false
