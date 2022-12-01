=begin

Write a method that takes a year as input and returns the century. The return value should be a string that
begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'


input: an integer (denoting the year)
output: a string (denoting the century)
rules:
- return value should be a string that begins with century number, and ends
with st, nd, rd, or th as appropriate
- new centuries begin in years that end with 01
  -> so, the years 1901 - 2000 comprise the 20th century
- if year doesn't end in 0, century is year / 100 + 1
  -> if year ends in 0 , subtract 1

algorithm:
looking into endings:
1st
2nd
3rd
4th
5th
6th
7th
8th
9th
10th
11th
12th
13th
.
.
.
20th
21st
22nd
23rd
24th
.


# find century number
define century method that accepts 1 parameter year
  cent = year / 100 + 1
  if year ends with 00, then - 1 from cent


  suffix = return value of invoking century_suffix method and passing in cent as an argument
  implicitly return cent + suffic using string interpolation

# find century suffix
define century_suffix method that accepts 1 parameter century
    if century ends in 11, 12, or 13, return "th"
    initialize last_digit variable to the last digit of century
    case last_digit
      when 0
        - 'th'
      when 1
        - 'st'
      when 2
        - 'nd'
      when 3
        - 'rd'
      else
        - 'th'


=end

def century(year)
  cent = year / 100 + 1
  if year % 100 == 0
    cent -= 1
  end

  suffix = century_suffix(cent)
  
  cent.to_s + suffix
end

def century_suffix(century)
  if [11, 12, 13].include?(century % 100)
    return 'th'
  end

  last_digit = century.to_s[-1].to_i
  
  case last_digit
  when 0
    "th"
  when 1
    "st"
  when 2
    "nd"
  when 3
    "rd"
  else
    "th"
  end
end


# Test Cases:
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'