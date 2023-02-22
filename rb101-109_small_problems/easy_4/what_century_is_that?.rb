=begin

Write a method that takes a year as input and returns the century. The return value should be a string that
begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.


----

input: a year
return: the century
rules:
  - return value should be a string that begins with century number and ends with st, nd, rd, or th
  - new centuries begin in years that end with 01
    -> ex) years 1901-2000 comprise the 20th century

----

algorithm:
1. century (return century)
  - divide year by 100:
    -> assign quotient to century
    -> assign the remainder to remainder
  - if the remainder >= 1, add 1 to century

  - invoke century suffix and pass in century as argument
    -> assign return value to suffix

  - combine century and suffix using string interpolation


2. century_suffix (return suffix)
  # Examples:
  1st
  2nd
  3rd
  4th
  ..
  20th
  21st
  22nd
  23rd
  24th

  # method implementation
  - if century ends in 11, 12, or 13, return th
  - if century ends in 1, return st
  - if century ends in 2, return nd
  - if century ends in 3, return rd
  - else, return th

=end

def century(year)
  cent, remainder = year.divmod(100)
  cent += 1 if remainder >= 1
  cent = cent.to_s
  
  suffix = century_suffix(cent)
  
  cent + suffix
end

def century_suffix(cent)
  case
  when cent.end_with?("11", "12", "13")
    return "th"
  when cent.end_with?("1")
    return "st"
  when cent.end_with?("2")
    return "nd"
  when cent.end_with?("3")
    return "rd"
  else
    return "th"
  end
end


# Examples:
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'