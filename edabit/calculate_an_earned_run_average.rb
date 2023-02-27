=begin
  
Create a function that returns an Earned Run Average (ERA). An ERA is calculated by multiplying 9 by the quotient of Earned Runs Allowed er divided by ip Innings Pitched.

In baseball statistics, innings are represented with a fractional part of .1 (1/3) or .2 (2/3) to represent the number of outs in an inning. 
A whole number or a number with a fractional part of .0 represents a full inning with three outs. Check the Resources tab for a deeper explanation.

Notes
ERA is represented with a scale of 2: 2.08
For 1/3 and 2/3, use a scale of 2.

----

input: two numbers, earned runs allowed, er, and innings itched, ip
return: an earned run average (era)
  - era = 9 * er / ip

----

algorithm:
- 9 * er / ip.to_f

=end

def era(er, ip)
  (9 * er / ip.to_f).round(2, :down)
end


# Examples
p era(22, 99) #== 2.00
p era(23, 99.1) #== 2.08
p era(24, 99.2) #== 2.17