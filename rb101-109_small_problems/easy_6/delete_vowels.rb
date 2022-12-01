=begin

Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Example:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


input: an array of strings
output: an array of strings (with vowels removed)
rules:
- uppercase vowels must be removed as well as lowercase.

algorithm:
define method remove_vowels which accepts 1 parameter arr_of_strs
- iterate over arr_of_strs and transform as follows for each str:
  - replace all vowels (uppercase and lowercase) with ""
- will implicitly return array with transformed values
=end

def remove_vowels(arr_of_strs)
  arr_of_strs.map do |str|
    str.gsub(/[aeiouAEIOU]/, "")
  end
end


# Test Cases
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']