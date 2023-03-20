# You will be given an array of numbers. You have to sort the odd numbers in ascending order while leaving the even numbers at their original positions.
# https://www.codewars.com/kata/578aa45ee9fd15ff4600090d/train/ruby


=begin

input: an array of numbers
return: an array with the odd numbers sorted in ascending order while leaving the even numbers at their original positions
rules:
  - input array doesn't appear to have any negative numbers
  - if input array is empty, return empty array
  - only sort odd numbers (even numbers retain their original positions)
notes:
  - create an array of only the odd numbers from input array, sorted
  - iterate over numbers and replace odd numbers with the next odd number in the sorted array

----

algorithm:
- intialize odd_index to 0

- for each number in numbers array, select the following:
  - numbers which are odd
  -> sort the resulting array, and assign to odd_numbers_sorted 
  TEST HERE

- iterate through each number in numbers array with index, and for each number and index do the following:
  - if number is odd, then reassign number to odd_numbers_sorted[odd_index]
  - increment odd_index by 1

- return the newly mutated numbers array

=end

def sort_array(numbers)
  odd_index = 0

  odd_numbers_sorted = numbers.select { |number| number.odd? }.sort

  numbers.each_with_index do |number, index|
    if number.odd?
      numbers[index] = odd_numbers_sorted[odd_index]
      odd_index += 1
    end
  end

  numbers
end


p sort_array([5, 3, 2, 8, 1, 4, 11]) == [1, 3, 2, 8, 5, 4, 11]
p sort_array([2, 22, 37, 11, 4, 1, 5, 0]) == [2, 22, 1, 5, 4, 11, 37, 0]
p sort_array([1, 111, 11, 11, 2, 1, 5, 0]) == [1, 1, 5, 11, 2, 11, 111, 0]
p sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
p sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
p sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5]) == [0, 1, 2, 3, 4, 5, 8, 7, 6, 9]
p sort_array([]) == []
p sort_array([19]) == [19]
p sort_array([2]) == [2]
p sort_array([7,5]) == [5,7]