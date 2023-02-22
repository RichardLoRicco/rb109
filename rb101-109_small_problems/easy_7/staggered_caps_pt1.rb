=begin

Write a method that takes a String as an argument, and returns a new String that contains the original value using 
a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. 
Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

---

input: a string
return: a new string that contains the original value using a staggered capitalization scheme in which every other
        character is capitalized, and the remaining characters are lowercase
rules:
  - characters that are not letters should not be changed, but count as characters when switching between
    upper and lowercase

----

algorithm:
- initialize staggered_string to ""
- split string into an array of chars and iterate over it with index so that for each char and index:
  - if index is even, upcase char
  - if index is odd, downcase char
  - add char to staggered_string
- return staggered_string

=end

def staggered_case(string)
  staggered_string = ""

  string.chars.each_with_index do |char, index|
    if index.even?
      char = char.upcase
    else
      char = char.downcase
    end
    staggered_string << char
  end

  staggered_string
end

# Example:
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'