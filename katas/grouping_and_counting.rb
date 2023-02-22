=begin

input: an array of values
return: a hash whose keys are the unique values of the array and whose values are their count
rules:
  - can't use Array#count
  - can't use Array#length
example:
  - [1, 1, 2, 2, 2, 3] => {1 => 2, 2 => 3, 3 => 1}
  
----

algorithm:
- return nil if input is nil or empty
- initialize empty hash element_count
- iterate through the elements of input and for each element:
  - if element_count doesn't have that element as a key, add it and 1 as it's value
  - otherwise, increment the resulting key by 1
- return element_count

=end


def group_and_count(input)
  return nil if input.nil? || input.empty?
    
  element_count = Hash.new(0)
  input.each do |element|
    if !element_count[element]
      element_count[element] = 1
    else
      element_count[element] += 1
    end
  end
  element_count
end

p group_and_count([0,1,1,0]) == {0=>2, 1=>2}