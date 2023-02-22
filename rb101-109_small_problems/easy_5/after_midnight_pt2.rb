=begin

As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. 
Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.


Yes, we know that 24:00 isn't a valid time in 24-hour format. Humor us, though; it makes the problem more interesting.

Disregard Daylight Savings and Standard Time and other irregularities.

----

input: a string denoting the time of day in 24 hour format
output: return the number of minutes before and after midnight (one method for each)
  - both methods should return a value in the range 0..1439
rules:
  - can't use ruby's Date and Time methods
  - if number of minutes is positive, the time is after midnight
  - if number of minutes is negative, the time is before midnight

algorithm:
initialize MINUTES_IN_A_DAY to 1440
initialize HOURS_TO_MINUTES to 60

define after_midnight method that accepts 1 parameter, time_of_day
  - assign hours to index positions 0..1 of time_of_day -> convert to integer!
  - assign minutes to index positions 3..4 of time_of_day -> convert to integer!
  
  - multiply hours by HOURS_TO_MINUTES and add minutes
    -> then take modulo of return value and 1440
  

define before_midnight method that accepts 1 parameter, time_of_day
  invoke the after_midnight method and pass in time_of_day as an argument to it
  - subtract MINUTES_IN_A_DAY by return value
    -> then take modulo of return value and 1440
=end

MINUTES_IN_A_DAY = 1440
HOURS_TO_MINUTES = 60

def after_midnight(time_of_day)
  hours = time_of_day[0..1].to_i
  minutes = time_of_day[3..4].to_i

  (hours * HOURS_TO_MINUTES + minutes) % MINUTES_IN_A_DAY
end

def before_midnight(time_of_day)
  (MINUTES_IN_A_DAY - after_midnight(time_of_day)) % MINUTES_IN_A_DAY
end

# Examples:
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0