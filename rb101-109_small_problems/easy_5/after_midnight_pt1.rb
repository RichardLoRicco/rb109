=begin

The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive,
the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Disregard Daylight Savings and Standard Time and other complications.


inputs: an integer (positive or negative)
output: a string (denoting the time in 24 hour format (hh:mm))
rules:
- input represents the number of minutes before or after midnight
  -> if positive, time is after midnight
  -> if negative, time is before midnight
- take the minute-based format input and return time of day in 24 hour format:
    - ex) (hh:mm)
- method should work with any integer input

algorithm:

    

=end






# Test Cases:
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
