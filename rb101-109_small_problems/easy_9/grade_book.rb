=begin
Write a method that determines the mean (average) of the three scores passed to it, and 
returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

----

input: three scores (integer)
output: return the letter value associated with that grade
rules:
  - test values are all between 0 and 100
  - no need to check for negative values or values greater than 100

----

algorithm:
define get_grade method that accepts 3 parameters, score1, score2, and score3
  - initialize mean_grade to the return value of the following:
    - (score1 + score2 + score3) / 3
  
  - look at mean_grade and:
      - when between 90 and 100 then return 'A'
      - when between 80 and 89 then return 'B'
      - when between 70 and 79 then return 'C'
      - when between 60 and 69 then return 'D'
      - otherwise, return 'F'

=end

def get_grade(score1, score2, score3)
  mean_grade = (score1 + score2 + score3 ) / 3

  case mean_grade
  when 90..100 then "A"
  when 80..89  then "B"
  when 70..79  then "C"
  when 60..69  then "D"
  else              "F"
  end
end


# Example:
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"