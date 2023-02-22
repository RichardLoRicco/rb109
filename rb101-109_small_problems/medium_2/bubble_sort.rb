=begin

Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. 
In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. 
If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made 
without performing any swaps; at that point, the Array is completely sorted.

We can stop iterating the first time we make a pass through the array without making any swaps; at that point, the entire Array is sorted.

For further information, including pseudo-code that demonstrates the algorithm as well as a minor optimization technique, see the Bubble Sort wikipedia page.

Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; 
that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

----

input: an array
return: return the same array, sorted using the bubble sort algorithm
rules:
  - sort will be "in-place", meaning mutate the array passed in as an argument
  - assume that the array contains at least 2 elements

----

algorithm:
initialize length to length of array

loop as follows:
  initialize swapped to false

  from 0 to length of array - 1, for each index inclusive:
    - if array[index -1] > array[index]:
        -> swap them
        -> reassign swapped to true

  break out of loop if swapped is false

return array

=end

def bubble_sort!(arr)
  length = arr.length

  loop do 
    swapped = false
    (1..length-1).to_a.each do |index|
      if arr[index -1] > arr[index]
        arr[index -1], arr[index] = arr[index], arr[index -1]
        swapped = true
      end
    end

    break if swapped == false
  end

  arr
end

# Examples:
array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)