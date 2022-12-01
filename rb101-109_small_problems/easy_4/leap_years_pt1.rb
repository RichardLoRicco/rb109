=begin

In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the 
year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, 
and returns true if the year is a leap year, or false if it is not a leap year.


leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

input: an integer greater than 0 (denoting the year)
output: a boolean (true if year is leap year, false if not)
rules:
- leap years occur in every year that is evenly divisible by 4, unless it is also divisible by 100
  -> if year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisble by 400

algorithm:
define leap_year? method that accepts 1 parameter year
- if year is evenly divisible by 4:
  - if not divisible by 100, then leap year
  - if divisible by 100, then:
    - if divisible by 400 then leap year
    - if not divisible by 400 then not leap year
- else not leap year

=end

def leap_year?(year)
  if year % 4 == 0
    if year % 100 != 0
      true
    else
      if year % 400 == 0
        true
      else
        false
      end
    end
  else
    false
  end
end



p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true