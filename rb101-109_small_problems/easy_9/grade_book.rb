=begin
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

Example:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"


input: three integers
- these consist of three different scores
output: return a string
- this consists of the letter value associated with the grade 
rules:
- determine the mean (average) of the three scores passed in to determine the letter grade

algorithm:
define get_grade method that accepts 3 parameters, score1, score2, and score3
  initialize mean and assign to return value of (score1 + score2 + score3)/3
  implicitly return the following based on the value of mean:
    90 <= mean <= 100	'A'
    80 <= mean < 90	'B'
    70 <= mean < 80	'C'
    60 <= mean < 70	'D'
    0 <= mean < 60	'F'

=end

def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3)/3
  case mean
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  when 0..59 then "F"
  end
end

# Test Cases:
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"