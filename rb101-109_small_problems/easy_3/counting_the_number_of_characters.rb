=begin
  
Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

input: a string (a word of multiple words)
output: an integer using string interpolation
rules:
- count the number of characters in the input word
- spaces don't count
- all other characters count

algorithm:
ask user for word or multiple words
  - save as words
split into an array based on spaces, then convert back to string without spaces -> save as compressed_words
find the length of compressed_words -> save as compressed_words_characters
output value of compressed_words_characters using string interpolation

=end

print "Please write a word or multiple words: "
words = gets.chomp

compressed_words = words.split.join("")

compressed_words_characters = compressed_words.length

puts "There are #{compressed_words_characters} characters in #{words}."


=begin
input:
Please write word or multiple words: walk 

output:
There are 4 characters in "walk".

input:
Please write word or multiple words: walk, don't run

output:
There are 13 characters in "walk, don't run".

=end