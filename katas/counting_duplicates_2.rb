=begin

Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric 
digits that occur more than once in the input string. The input string can be assumed to contain only alphabets
(both uppercase and lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

----

input: a string
return: the count of case-insensitive alphabetic characters and numeric digits that occur more than once in input string
rules:
  - input string contains only upper and lowercase alphabetic characters and numeric digits
  - remember our inquiry is case-insensitive (so downcase to get everything to the same)
examples:
  - empty string, return 0
  - no characters repeat more than once, return 0

----

algorithm:
- initialize count to 0
- initialize downcased_string to downcased string
- split downcased_string into array of unique chars, and iterate over each char as follows:
    - if string's count of char > 1, increment count by 1
- return count


=end

def duplicate_count(string)
  count = 0
  downcased_string = string.downcase

  downcased_string.chars.uniq.each do |char|
   count += 1 if downcased_string.count(char) > 1
  end

  count
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
