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

----

input: an array of words (strings)
output: print out groups of words that are anagrams
rules:
  - anagrams are words that have the same exact letters in them but in a different order

----

algorithm:
initialize words to ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

inialize results to {}

iterate through words, and for each word:
  - sort the word -> assign to sorted_word
  
  - if sorted_word is a key:
      - if word is present in the value hash, do nothing
      - if word is not present in the value hash, add word as as a string inside of an array to the sorted_word ket in results
  - if sorted_word is not a key, add sorted_word as key and word as string inside of an array to results

for each value in results:
  - output the value on separate lines
    -> think puts

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

results = {}

words.each do |word|
  sorted_word = word.split("").sort.join("")

  if results.has_key?(sorted_word)
    results[sorted_word] << word
  else
    results[sorted_word] = [word]
  end
end

results.each_value { |value| p value }