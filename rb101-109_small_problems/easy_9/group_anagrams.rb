=begin
Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams. 
Anagrams are words that have the same exact letters in them but in a different order. 
Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)


input: an array
output: print out a series of arrays
- these arrays are groups of words that are anagrams
rules:
- anagrams are words that have the same exact letters in them but in a different order

algorithm:
initialize result to {}
iterate through words and for each word:
  - initialize key and assign it to the word sorted alphabetically
  - if results contains the key key:
    - push word to the value array for that key in result
  - otherwise, 
    - add the key value, with key being the key and [word] being the value

for each array value of result,
  output said value
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

result = {}

words.each do |word|
  key = word.split("").sort.join("")

  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |value|
  puts "------"
  p value
end
