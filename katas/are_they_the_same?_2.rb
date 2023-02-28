=begin

Given two arrays a and b write a function comp(a, b) that checks whether the two arrays have the "same" elements, 
with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.


Examples:

Valid arrays:
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 
144, 361 the square of 19, 25921 the square of 161, and so on. 

It gets obvious if we write b's elements in terms of squares:
a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

Invalid arrays:
If we change the first number to something else, comp may not return true anymore:
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 36100 is not the square of any number of a.

Remarks:
a or b might be [] (all languages except R, Shell).
a or b might be nil or null or None or nothing (except in Haskell, Elixir, C++, Rust, R, Shell, PureScript).
If a or b are nil (or null or None), the problem doesn't make sense so return false.

Note for C:
The two arrays have the same size (> 0) given as parameter in function comp.

---

input: two arrays, a and b
return: true if the elements in b are the elements in a squared, regardless of the order, false otherwise
rules:
- a or b can be empty
- a or b can be nil, if so return false
notes:
  - for each element in b, a must have the square root of that element

----

algorithm:
- iterate over each element of b array and check whether for all values of element:
  - a includes the square root of that element

=end

def comp(a, b)
  return false if a.nil? || b.nil? || b.empty?
  b.all? { |element| b.count(element) <= a.count(element ** 0.5) }
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361]) == true
p comp([121, 144, 19, 161, 19, 144, 19, 11] , [132, 14641, 20736, 361, 25921, 361, 20736, 361]) == false
p comp(nil, [1, 2, 3]) == false
p comp([1, 2], []) == false
p comp([1, 2], [1, 4, 4]) == false