=begin
  
Given an amount of money and an array of coins denominations, create a function that counts how many different ways you 
can make change with the given money.

Notes:
Order of coins does not matter (i.e. 1+1+2 == 2+1+1).
You have an infinite amount of coins.

----

input: a number denoting an amount of money, and an array of coin demoninations
return: the number of different ways you can make change with the given money (as an integer)
rules:
  - order of coins doesn't matter
  - have an infinite amount of coins
notes:
  - want to determine how to calculate the amount given using any amount of the numbers provided
  - ex) 4, [1, 2] == 3:
    -> can be 1 1 2; 1 1 1 1; or 2 2
  - ex) 10, [5, 2, 3] = 4
    -> can be 5 5; 5 3 2; 2 2 3 3; or 2 2 2 2 2

----

algorithm:
- 

=end

def coins_combinations(amount, coin_denominations)
  
end



# Examples:
p coins_combinations(4, [1, 2]) == 3
# 1+1+1+1 = 4
# 1+1+2 = 4
# 2+2 = 4
p coins_combinations(10, [5, 2, 3]) == 4
p coins_combinations(11, [5, 7]) == 0