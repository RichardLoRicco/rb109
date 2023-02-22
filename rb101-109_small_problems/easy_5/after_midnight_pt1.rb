=begin

The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive,
the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
Your method should work with any integer input.

You may not use ruby's Date and Time classes.


Disregard Daylight Savings and Standard Time and other complications.

----

input: number of minutes to midnight
  - if positive, the time is after midnight
  - if negative, the time is before midnight
return: the time in 24 hour format (hh:mm)
rules:
  - method should work with any integer input
  - can't use Date and Time classes

----

algorithm:
HOURS_PER_DAY = 
HOURS_TO_MINUTES = 60
MINUTES_PER_DAY = 60 x 24 = 1440


1. normalize_minutes_to_midnight
  - if minutes_to_midnight is positive:
    - remove 1440 from it until it is less than 1440
  - if minutes_to_midnight is negative:
    - add 1440 to it until it is greater than 0
  - return minutes_to_midnight


2. find time of day
- invoke normalize_minutes_to_midnight method and pass in minutes_to_midnight
    -> assign return value to normalized_minutes_to_midnight
- divide normalized_minutes_to_midnight by 24 using divmod:
    -> assign quotient to hours and remainder to minutes
- format using Kernel#format to get (hh:mm) format


=end

HOURS_PER_DAY = 24
HOURS_TO_MINUTES = 60
MINUTES_PER_DAY = HOURS_TO_MINUTES * HOURS_PER_DAY

def time_of_day(minutes_to_midnight)
  normalized_minutes_to_midnight = normalize_minutes_to_midnight(minutes_to_midnight)

  hours, minutes = normalized_minutes_to_midnight.divmod(HOURS_PER_DAY)
  format('%.2d', hours) + ":" + format('%.2d', minutes)
end

def normalize_minutes_to_midnight(minutes_to_midnight)
  if minutes_to_midnight > 0
    minutes_to_midnight -= MINUTES_PER_DAY until minutes_to_midnight < MINUTES_PER_DAY
  elsif minutes_to_midnight < 0
    minutes_to_midnight += MINUTES_PER_DAY until minutes_to_midnight > 0
  end
  minutes_to_midnight
end


# Examples:
p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"