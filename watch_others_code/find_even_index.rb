=begin
You are given an array of integers. Your job is to take that array and find an index N where the sum of the integers 
to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1. 
Empty arrays are equal to 0 in this problem.

----

input: an array of integers
return: an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N
  - if there is no index where this is the case, return -1
explicit rules:
  - empty arrays are equal to 0
implicit rules:
  - integer at index N is not counted in the sum

----

algorithm:
- initialize desired_index to -1
- intialize last_index to arr's size - 1

- return 0 if arr's size is 0

- iterate through arr's indexes, and for index do the following:
  - if index is 0:
    - if arr[index + 1..-1]'s sum = 0:
        - reassign desired_index to 0
  - elsif index is -1
    - if arr[0..index -1]'s sum = 0:
      - reassign desired_index to 0
  - else
    - if arr[0...index]'s sum is equal to arr[index + 1..-1]'s sum
      - reassign desired_index to arr[0...index]'s sum
- return desired_index

=end

def find_even_index(arr)
  desired_index = -1
  last_index = arr.size - 1
  return 0 if arr.size == 0

  arr.each_index do |index|
    if index == 0
      desired_index = index if arr[index + 1..last_index].reduce(&:+) == 0
    elsif index == last_index
      desired_index = index if arr[0..last_index-1].reduce(&:+) == 0
    else
      if arr[0...index].reduce(&:+) == arr[index+1..-1].reduce(&:+)
        desired_index = index
      end
    end
  end

  desired_index
end

p find_even_index([]) == 0
p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
