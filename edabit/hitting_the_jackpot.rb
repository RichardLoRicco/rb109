=begin

Create a function that takes in an array (slot machine outcome) and returns true if all elements in the array are identical, and false otherwise. 
The array will contain 4 elements.

Notes:
The elements must be exactly identical for there to be a jackpot.

----

input: an array
return: true if all elements in the array are identical, otherwise false
rules:
  - array will contain 4 elements
  - elements must be exactly identical for there to be a jackpot
    - i.e., pay attention to case

----

algorithm:
- initialize test to first element of arr
- iterate over all elements of arr and check whether the following is true for all elements:
    - test == element


=end

def testJackpot(arr)
  test = arr[0]
  arr.all? { |element| test == element }
end

# Examples
p testJackpot(["@", "@", "@", "@"]) == true
p testJackpot(["abc", "abc", "abc", "abc"]) == true
p testJackpot(["SS", "SS", "SS", "SS"]) == true
p testJackpot(["&&", "&", "&&&", "&&&&"]) == false
p testJackpot(["SS", "SS", "SS", "Ss"]) == false
