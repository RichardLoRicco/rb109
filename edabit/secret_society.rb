=begin

A group of friends have decided to start a secret society. 
The name will be the first letter of each of their names, sorted in alphabetical order.

Create a function that takes in an array of names and returns the name of the secret society.

Notes:
The secret society's name should be entirely uppercased.

----

input: an array of strings (consisting of individual names)
return: a string containing the first letter of each string in the input array, sorted in alphabetical order
rules:
  - return value should be entirely uppercased

----

algorithm:
- intialize result to ""
- iterate over names and for each name do the following:
    - add name[0] to result
- split result into an array of chars, sorts it, then join chars together
  -> upcase return value


=end

def society_name(names)
  result = ""
  names.each { |name| result << name[0] }
  result.chars.sort.join.upcase
end

# Examples
p society_name(["Adam", "Sarah", "Malcolm"]) == "AMS"
p society_name(["Harry", "Newt", "Luna", "Cho"]) == "CHLN"
p society_name(["Phoebe", "Chandler", "Rachel", "Ross", "Monica", "Joey"]) == "CJMPRR"