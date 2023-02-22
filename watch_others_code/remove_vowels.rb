# Write a method that takes an array of strings and returns an array of the same string values, except with the vowels removed.

=begin

input: an array of strings
return: an array of the same string values, but with vowels removed
notes:
  - unsure if we are only dealing with lowercase characters, so will deal with both to be safe

----

algorithm:
- iterate over arr and transform each string as follows:
  - remove any upper or lowercase vowels from string (#gsub)
  - return string

=end

def remove_vowels(arr)
  arr.map do |string|
    string.gsub(/[aeiouAEIOU]/, "")
  end
end

p remove_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']
