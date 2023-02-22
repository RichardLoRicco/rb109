=begin
Write a method which takes a grocery list (array) of fruits with quantities and converts it 
into an array of the correct number of each fruit.

Example:
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


input: a nested array
- contains fruits with quantities
output: return an array
- contains the correct number of each fruit

algorithm:
define buy_fruit method that accepts 1 parameter fruits_with_quantities
  initialize fruit_corrected to []
  iterate over fruits_with_quantities and for each pair do the following:
    pair[1] (i.e., the quantity) times do the following:
      add pair[0] (i.e., the fruit) to fruit_corrected
  implicitly return fruit_corrected

=end

def buy_fruit(fruits_with_quantities)
  fruits_corrected = []

  fruits_with_quantities.each do |pair|
    fruit, quantity = pair[0], pair[1]
    quantity.times { fruits_corrected << fruit }
  end
  
  fruits_corrected
end


# Test Case:
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]