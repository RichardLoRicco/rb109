=begin

Write a method that takes a String as an argument, and returns a new String that contains the original value using 
a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. 
Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

Example:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


input: a string
output: a new string
- contains the original value using a staggered capitalization scheme:
  -> every other character is capitalized, remaining are lowercase
rules:
- characters that are not letters shouldn't be changed, but count as characters when switching between upper and lowercase

algorithm:
define staggered_case method that accepts 1 parameter string
  split string into an array of characters -> assign to characters
  mutate characters so that its characters are downcased
  iterate over characters with index and for each character and index:
    - if index is even, mutate character so that it is uppercase
  implicitly return characters joined into a string

=end

def staggered_case(string)
  characters = string.split("")
  characters.each_with_index do |character, index|
    if index.even?
      character.upcase!
    else
      character.downcase!
    end
  end
  characters.join("")
end


# Test Cases:
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'