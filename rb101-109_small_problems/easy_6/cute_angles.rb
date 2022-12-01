=begin

Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String
that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees,
a single quote (') to represent minutes, and a double quote (") to represent seconds. 

A degree has 60 minutes, while a minute has 60 seconds.

Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:
DEGREE = "\xC2\xB0"

----------------------------

input: a floating point number
- represents an angle between 0 and 360 degrees
output: a string
- represents the input angle in degrees, minutes, and seconds
rules:
- formatting: 
  - use a degree symbol (°) to represent degrees
  - use a single quote (') to represent minutes
  - use a double quote (") to represent seconds
- conversions:
  - a degree has 60 minutes
  - a minute has 60 seconds
- use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07"
- You may use this constant to represent the degree symbol:
  - DEGREE = "\xC2\xB0"

algorithm:
initialize constant DEGREES_TO_MINUTES to 60
initialize constant MINUTES_TO_SECONDS TO 60

define dms method that accepts 1 parameter, angle
  assign angle rounded down to degrees
    - divide angle by degrees, save remainder to remainder
    - reassign remainder to -> multiply remainder by DEGREES_TO_MINUTES
    - assign remainder downded down to minutes
    - divide remainder by minutes, save remainder as remainder
    - multIply remainder by MINUTES_TO_SECONDS -> assign to seconds
  
  format degrees minutes and seconds together using string interpolation
  -> make sure to use two digit numbers with leading zeros
  -> make sure to use requisite symbols for degrees, minutes, and seconds

=end

DEGREES_TO_MINUTES = 60
MINUTES_TO_SECONDS = 60
DEGREES_TO_SECONDS = 60 * 60 
DEGREE = "\xC2\xB0"

def dms(angle)
  total_seconds = (angle * DEGREES_TO_SECONDS).round
  degrees, remaining_seconds = total_seconds.divmod(DEGREES_TO_SECONDS)
  minutes, seconds = remaining_seconds.divmod(MINUTES_TO_SECONDS)

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end



# Test Cases:
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")