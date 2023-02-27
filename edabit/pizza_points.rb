=begin

Google is launching a network of autonomous pizza delivery drones and wants you to create a flexible rewards system (Pizza Points™) 
that can be tweaked in the future. The rules are simple: if a customer has made at least N orders of at least Y price, they get a FREE pizza!

Create a function that takes a dictionary of customers, a minimum number of orders and a minimum order price. Return a list of customers
that are eligible for a free pizza.

Notes:
Sort the returned array of customer names in alphabetical order.

---- 

input: a hash (dictionary of customers), a min number of orders (integer, n) and a min order price (integer, y)
return: an array containing a list of customers that are eligible for a free pizza
rules:
  - customer is eligible if they have at least n orders of at least y price
  - sort returned array of customer names by alphabetical order

----

algorithm:
- initialize free_pizza_list to []
- iterate over each key value pair in dictionary, and for each name and orders:
  - initialize qualified_order to 0
  - count the number of orders equal to or greater than y, and add that number to qualified_order
  - if qualified_order >= n, add name to free_pizza_list
- return free_pizza_list

=end

def pizza_points(dictionary, n, y)
  free_pizza_list = []

  dictionary.each do |name, orders|
    qualified_orders = 0
    qualified_orders += orders.count { |order| order >= y }
    free_pizza_list << name.to_s if qualified_orders >= n
  end 

  free_pizza_list
end


# Examples:
customers = {
  "Batman": [22, 30, 11, 17, 15, 52, 27, 12],
  "Spider-Man": [5, 17, 30, 33, 40, 22, 26, 10, 11, 45]
}
p pizza_points(customers, 5, 20) == ["Spider-Man"]
p pizza_points(customers, 3, 10) == ["Batman", "Spider-Man"]
p pizza_points(customers, 5, 100) == []