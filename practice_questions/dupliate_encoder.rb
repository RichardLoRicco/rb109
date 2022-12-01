=begin

Duplicate Encoder
(https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby)
6 kyu
The goal of this exercise is to convert a string to a new string where each
character in the new string is "(" if that character appears only once in the original string,
or ")" if that character appears more than once in the original string.
Ignore capitalization when determining if a character is a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))(("  

# inputs: a string
# outputs: a new string
# rules:
# - each character in new string is '(' if character appears once
# - otherwise, if appears more than once, character is ')'
# -  ignore caps when searching for duplicates
# - spaces, non-traditional characters Continuation

# data
# input: String
# output: String
# thinking an array could be useful

# algorithm:
# define duplicate_encode method which accepts 1 parameter string
# convert string into array of characters -> assign that to arr
# iterate over arr and for each character, destructively transform as follows (map!):
# - downcase character

# iterate over arr and for each character transform as follows:
#   if string contains more than one occurence of character:
    ')'
#   otherwise:
    '('

# convert arr to a string -> save as new_string
# return new_string

=end

def duplicate_encode(string)
  arr = string.split("")

  arr.map! { |character| character.downcase }

  arr.map! do |character|
    if string.count(character) > 1
      ')'
    else
      '('
    end
  end
  new_string = arr.join
end

p duplicate_encode("din")  == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("

def duplicate_encode(str)
  code = ""
  str = str.downcase
  0.upto(str.size - 1) do |idx|
    if str.count(str[idx]) == 1
      code << "("
    elsif str.count(str[idx]) > 1
      code << ")"
    end
  end
  code
end