=begin
  
Write a program that will ask a user for an input of a word or multiple words and give back the number of characters.

Spaces should not be counted as a character.

----

input: a word or multiple words (string)
output: the number of characters (using string interpolation)
rules:
  - spaces should not be counted as a character
----

algorithm:
- ask for word or multiple words
  -> save input as string
- remove spaces from string
  -> #delete method
- count the number of characters
  -> save as char_count
- output char_count using string interpolation

=end

print "Please write word or multiple words: "
string = gets.chomp

spaces_removed = string.delete(" ")

char_count = spaces_removed.size

puts "There are #{char_count} characters in \"#{string}\"."


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