=begin

Create a function that takes an array of booleans that represent whether or not a player has logged into a game that day. 
Output the longest streak of consecutive logged in days.

Notes:
Return your output as an integer.
If a given array is all false, return 0 (see example #2).

----

input: an array of booleans
return: the longest streak of consecutive true values in array input
rules:
  - if given array is all false, return 0
  - return output as integer

----

algorithm:
- inialize longest to 0
- initialize current to 0

- return 0 if all bools in boolean are false

- iterate over booleans and for each bool:
  - if bool == true, increment current by 1
  - otherwise, reset current to 0
  - if current > longest, resassign longest to current's value
- return longest



=end

def daily_streak(booleans)
  longest = 0
  current = 0

  return 0 if booleans.all? { |bool| bool == false }

  booleans.each do |bool|
    bool == true ? current += 1 : current = 0
    longest = current if current > longest
  end

  longest
end

# Examples
p daily_streak([true, true, false, true]) == 2
p daily_streak([false, false, false]) == 0
p daily_streak([true, true, true, false, true, true]) == 3