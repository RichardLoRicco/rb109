=begin
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

----

input: a positive integer
return: the next biggest number formed by the same digits
  - if no bigger number can be composed using those digits, return -1

----

algorithm:
- initialize highest_number to pos_int converted to a string, then array, then reverse sorted, then to a string, then an integer
- initialize sorted to pos_int converted to a string, then array then sorted, then to a string, then an integer
- return -1 if highest_number == pos_int
- initialize next_bigger to -1
- from pos_int + 1 up to highest_number, for each num
    - if num sorted == sorted:
        - reassign next_bigger to num
        - break
- return next_bigger


=end

def next_bigger_num(pos_int)
  highest_number = pos_int.to_s.chars.sort.reverse.join("").to_i
  sorted = pos_int.to_s.chars.sort.join("").to_i
  return -1 if highest_number == pos_int

  next_bigger = -1
  (pos_int + 1).upto(highest_number) do |num|
    if num.to_s.chars.sort.join("").to_i == sorted
      next_bigger = num
      break
    end
  end
  next_bigger
end


p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
