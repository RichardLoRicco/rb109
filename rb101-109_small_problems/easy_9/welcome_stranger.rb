=begin

Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, 
will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting 
that uses the person's full name, and mentions the person's title and occupation.

Example:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."


inputs:
1. an array; and
  - the array contains 2 elements that, when combined with adjoining spaces, produce a person's name
2. a hash
  - the hash contains 2 keys, :title and :occupation, and the appropriate values
output:
- return a greeting that uses the person's full name, and mentions the person's title and occupation
  -> use string interpolation

algorithm:
define greetings method that accepts 2 parameters, name and info
  output "Hello, {FULL NAME}, Nice to have a {INFO} around."

=end

def greetings(name, info)
  "Hello, #{name.join(" ")}! Nice to have a #{info[:title]} #{info[:occupation]} around."
end


# Test Case:
p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."