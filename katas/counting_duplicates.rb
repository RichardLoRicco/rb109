=begin

input: a string
return: the count of distinct case-insensitive alphabetic characters and numeric digits that
        occur more than once in the input string
rules:
  - input string can be assumed to contain only alphabetic characters and numeric digits
  
----

algorithm:
- initialize ALPHABET to a-z
- initialize DIGITS to 0-9

- initialize duplicate_tally to 0

- iterate over ALPHABET and for each char:
  - increment duplicate tally by 1 if text downcased has more than 1 occurence of char

- iterate over DIGITS and for each char:
  - increment duplicate tally by 1 if text downcased has more than 1 occurence of digit

- return duplicate_tally
=end

def duplicate_count(text)
  alphabet = ("a".."z").to_a
  digits = ("0".."9").to_a
  
  duplicate_tally = 0
  
  alphabet.each do |char|
    if text.downcase.count(char) > 1
      duplicate_tally += 1
    end
  end
  
  digits.each do |char|
    if text.downcase.count(char) > 1
      duplicate_tally += 1
    end
  end
  
  duplicate_tally
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2