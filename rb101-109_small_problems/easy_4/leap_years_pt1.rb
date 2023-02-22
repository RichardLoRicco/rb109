
# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. 
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. 
# Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year,
# or false if it is not a leap year.

=begin

input: any year (integer) greater than 1
return: true if the year is a leap year, false if not
rules:
  - leap years occur in every year that is evenly divisible by 4, unless the year is evenly divisibly by 100
  - if year is evenly divisible by 100, then it is not a leap year unless it is evenly divisible by 400

----

algorithm:
- return true if year evenly divisible by 400
- otherwise return false if divisible by 100
- otherwise return true if divisible by 4
- otherwise return false


=end

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
  false
  end
end


# Examples:
puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true