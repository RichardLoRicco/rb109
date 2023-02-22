=begin
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' 
as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

----
input: a string -> contains lowercased letters
return: a hash containing the letter count with letter as key and count as value
rules:
  - key must be a symbol instead of a string
  
----

algorithm:
initialize empty hash letter_count_hsh

split str into an array of chars and iterate over said array, for each char:
  - if char is a key (symbol) in letter_count_hsh, increment that key's associated value by 1
  - otherwise (if char is not a key), then create new key value pair with char as key (symbol) and 1 as value
- return letter_count_hsh

=end



def letter_count(str)
  letter_count_hsh = Hash.new(0)
  
  str.split("").each do |char|
    if letter_count_hsh.has_key?(char.to_sym)
      letter_count_hsh[char.to_sym] += 1
    else
      letter_count_hsh[char.to_sym] = 1
    end
  end
  letter_count_hsh
end

p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}