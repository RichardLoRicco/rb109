=begin

Write a method that returns the number of Friday the 13ths in the year given by an argument. 

You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that 
it will remain in use for the foreseeable future.

----

input: an integer -> denotes the year
return: an integer -> the number of Friday the 13ths in the year given
rules:
  - assume that the year is greater than 1752 (i.e. uses the modern Gregorian Calendar)

----

algorithm:
  - initialize sum_of_friday_13ths to track number of friday the 13ths
  - initialize date to first date of the argument year

  - loop as follows:
    - if date is friday and the 13th: -> add 1 to sum_of_friday_13ths
    - reassign date to next date
    - break when year ends
  
  - implicitly return sum
    
=end

require 'date'

def friday_13th(year)
  sum_of_friday_13ths = 0
  date = Date.new(year, 1, 1)

  loop do 
    if date.friday? && date.day == 13
      sum_of_friday_13ths += 1 
    end
    date = date.next_day
    break if date.year > year
  end

  sum_of_friday_13ths
end


# Examples:
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2