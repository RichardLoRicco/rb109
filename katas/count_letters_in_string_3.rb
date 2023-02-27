=begin
Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. 
The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

----

input: a string
return: a hash containing the letter count with the letters as keys and the counts as values
rules:
  -  key denoting each letter must be symbol instead of a string
  - input string will be all lowercase

----

algorithm:
- initialize empty hash letter_count_hsh
- split string into array of chars and iterate over each char so that for each char:
  - increment :char by 1 in letter_count_hsh
return letter_count_hsh

=end

def letter_count(string)
  letter_count_hsh = Hash.new(0)
  string.each_char { |char| letter_count_hsh[char.to_sym] += 1 }
  letter_count_hsh
end


p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
