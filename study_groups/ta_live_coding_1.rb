# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

=begin

input: a string, str
return: the input string (mutate), with every letter in the string replaced with the 3rd letter following it in the alphabet
rules:
  - replace letter regardless of case, but replace with the same case
  - don't replace non-letters (symbols, numbers)
  - if you get to end of alphabet, wrap around and start again


example:
  - c - (def) -> f
  - Z - (ABC) -> C

note: 
- initialize constants that contain a-z and A-Z (arrays)
- gsub! to conduct the replacement

----

algorithm:
- initialize constants UPPERCASE LOWERCASE to arrays containing a-z and A-Z
- iterate over each u_letter with index in UPPERCASE and for each u_letter and u_index:
  - replace that u_letter with UPPERCASE[index + 3]
  # take into account indexs over 25
- iterate over each l_letter with index in LOWERCASD and for each l_letter and l_index: 
  - replace that l_letter with LOWERCASE[index + 3]

=end

UPPERCASE = ("A".."Z").to_a

LOWERCASE = ("a".."z").to_a

def letter_changes(str)
  UPPERCASE.each_with_index do |u_letter, u_index|
    str.gsub!(u_letter, UPPERCASE[u_index +3])
    # remember to account for later indexes
  end
end
# USE MODULO TO FIX THE INDEX PROBLEMS


p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')