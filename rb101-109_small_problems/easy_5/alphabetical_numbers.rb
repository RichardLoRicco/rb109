=begin

Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers 
sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen,
sixteen, seventeen, eighteen, nineteen

Examples:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]


inputs: an array of integers between 0 and 19
outputs: return an array of those integers sorted based on the english words for each number

algorithm:
ininitialize constant 0_TO_19_INT_TO_ENGLISH and assign to it a hash with 0..19 as keys
and their english words as corresponding values

define alphabetic_number_sort method that accepts 1 parameter arr
- sort each int of arr by:
 - the corresponding string key in 0_TO_19_INT_TO_ENGLISH for that int

=end

INT_TO_ENGLISH = { 0 => "zero", 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(arr)
  arr.sort_by { |int| INT_TO_ENGLISH[int] }
end



# Test Cases:
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]