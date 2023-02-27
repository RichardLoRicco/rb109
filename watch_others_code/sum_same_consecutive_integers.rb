=begin
You are given an array that contains only integers (positive and negative). Your job is to sum 
only the numbers that are the same and consecutive. The result should be one array.

You can assume there is never an empty array and there will always be an integer.

----

input: an array that contains only integers (positive and negative)
return: sum only the numbers that are the same and consecutive, and return the resulting array
rules:
  explicit:
    - assume there is never an empty array
    - assume there will always be an integer in the input array
  implicit:
    - still add negatives

----

algorithm:
- inialize sum_arr to []
- initialize last_index to size of arr - 1
- initialize sum to arr[0]
- initialize index to 1
- until index > last_index:
  - if arr[index] == arr[index-1]:
    - increment sum by arr[index]
  - else:
    - add sum to sum_arr
    - reset sum to arr[index]
  - increment index by 1
- return sum_arr

=end

def sum_consecutives(arr)
  sum_arr = []
  last_index = arr.size
  sum = arr[0]
  index = 1
  until index > last_index do 
    if arr[index] == arr[index -1]
      sum += arr[index]
    else
      sum_arr << sum
      sum = arr[index]
    end
    index += 1
  end
  sum_arr
end


p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) #== [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
