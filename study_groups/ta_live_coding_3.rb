# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

=begin

input: a string, str
return: the input string, modified so that each letter is replaced with the 3rd letter following
        it in the alphabet
ex:
  - c becomes f
  - Z becomes C
rules:
  - both uppercase and lowercase letters are swapped with the same case
  - digits, symbols, etc. are not swapped
  - swapping by index in alphabet
  - need to be able to wrap around the end of the alphabet
    -> think modulo here

notes:
  - initialize a-z and A-Z arrays
  - split string into chars, iterate with index and:  
    - replace lowercase char with (index + 3) % 26 in lowercase
    - replace upperchase char with (index + 3) % 26 in uppercase
  -> use string reassignment

----

algorithm:
- initialize UPPERCASE to "A" to "Z" array
- initialize LOWERCASE to "a" to "z" array

- split string into array of chars and iterate over each char and index and do the following:
  - if UPPERCASE includes char:
    - reassign str[index] to UPPERCASE[(UPPERCASE.index + 3) % 26]

  - if LOWERCASE includes char
    - reassign str[index] to LOWERCASE[(LOWERCASE.index + 3) % 26]
- return string

=end

UPPERCASE = ("A".."Z").to_a
LOWERCASE = ("a".."z").to_a

def letter_changes(str)
  str.chars.each_with_index do |char, index|
    if UPPERCASE.include?(char)
      str[index] = UPPERCASE[(UPPERCASE.index(char) + 3) % 26]
    elsif LOWERCASE.include?(char)
      str[index] = LOWERCASE[(LOWERCASE.index(char) + 3) % 26]
    end
  end
  
  str
end


p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')