=begin

Task :
Given a List [] of n integers , find the minimum number to be inserted in a list, so that the sum of all elements of 
the list should equal the closest prime number .

Notes:
List size is at least 2 .

List's numbers will only have positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .

Input >> Output Examples:
1- minimumNumber ({3,1,2}) ==> return (1)
Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be inserted to transform the sum to 
prime number is (1) , which will make *the sum of the List** equal the closest prime number (7)* .

2-  minimumNumber ({2,12,8,4,6}) ==> return (5)
Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be inserted to transform the sum to
 prime number is (5) , which will make *the sum of the List** equal the closest prime number (37)* .

3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
Explanation:
Since , the sum of the list's elements equal to (189) , the minimum number to be inserted to transform the sum to prime number 
is (2) , which will make *the sum of the List** equal the closest prime number (191)* .

----

an array of integers
return: the minimum number to be inserted in the array so that the sum of all elements of the list should equal to the closet
        prime number
rules:
  - array can contain duplicate numbers
  - numbers in array will always be positive
  - new list's sum must equal the closest prime number
  - if sum is aleady prime, return 0
examples:
  - minimumNumber ({3,1,2}) ==> return (1) because new sum is 7
  - minimumNumber ({2,12,8,4,6}) ==> return (5) because new sum is 37
  - minimumNumber ({50,39,49,6,17,28}) ==> return (2) because new sum is 191

----

algorithm:
- initialize sum to sum of arr's elements (use #reduce)
- intialize new_num to 0
- loop as follows:
  - break if sum is prime
  - increment new_num by 1
  - increment sum by 1
- return new_num

=end

def minimum_number(arr)
  sum = arr.reduce(:+)
  new_num = 0
  loop do
    break if prime?(sum)
    new_num += 1
    sum += 1
  end
  new_num
end

def prime?(num)
  return false if num < 2
  (2..num-1).all? { |n| num % n != 0 }
end


p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2