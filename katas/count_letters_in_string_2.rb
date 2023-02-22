=begin
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' 
as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

----
input: a string
return: a hash containing the lowercase letter counts of the letters in the string
  - letter is key and count is value
  - key must be symbol and count must be integer

----

algorithm:
- initialize empty hash count_of_letters
- split string into an array of chars and iterate over each char as follows:
  - if char is included in range a-z, then increment :char by 1 in count_of_letters hash
- return count_of_letters_hash

=end



def letter_count(str)
  count_of_letters = Hash.new(0)

  str.chars.each do |char|
    count_of_letters[char.to_sym] += 1 if ("a".."z").include?(char)
  end
  
  count_of_letters
end


p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
