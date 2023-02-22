=begin

input: an array of integers
return: an index n where the sum of the integers to the left of n is equal to the sum of the 
  integers to the right of n
  - if there is no index that would make this happen, return -1
rules:
  - if you are given an array with multiple answers, return the lowest correct index
example:
  - find_even_index([1, 2, 3, 4, 3, 2, 1]) => index 3
  - find_even_index([1, 100, 50, -51, 1, 1]) => index 1
  - find_even_index([20, 10, -80, 10, 10, 15, 35]) => index 0

----

algorithm:
- initialize index to 0
- loop as follows:
  - if index is 0:
    - return index if 0 equal to the sum of arr[index + 1..-1]
  - otherwise:
    - return index if sum of arr[0...index] equal to sum of arr[index + 1..-1]
  - break if index is equal to arr's size - 1
  - return -1
=end


def find_even_index(arr)
  index = 0
  last_index = arr.size - 1
  
  loop do
    if index == 0
      return index if 0 == arr[index + 1 .. last_index].reduce(:+)
    elsif index == last_index
      return index if 0 == arr[0...last_index].reduce(:+)
    else
      return index if arr[0...index].reduce(:+) == arr[index + 1 .. last_index].reduce(:+)
    end
    break if index >= last_index
    index += 1
  end
  -1
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0 #"Should pick the first index if more cases are valid")
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1