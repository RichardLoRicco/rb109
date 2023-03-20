# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

=begin

input: a string
return: the input string, modified so that each letter is replaces with the 3rd letter following it in the alphabet
ex:
  - c becomes f (c, d, e, f)
  - Z becomes C (Z, A, B, C)
rules:
  - if get to end of alphabet, wrap around and continue from beginning
  - symbols are not replaced
  - numbers are not replaced
notes:
  - initialize constants that contain lower and uppercase letters
  - iterate over each constant with index, and for each letter use gsub! to replace letters in string with corresponding replacement
  - use % modulo operator to handle later indexed letters/wraping around -> modulo 26 seems to work based on IRB testing
  - there are 26 letters in the alphabet, so last index is 25

----

algorithm:
- initialize LOWERCASE to array containing a-z
- initialize UPPERCASE to array containing A-Z

- split str into an array of chars: and for each char and index do the following:
    - if LOWERCASE includes char:
      - replace str[index] with the (index position of char in LOWERCASE + 3) % 26
    - if UPPERCASE includes char:
      - replace str[index] with the (index position of char in UPPERCASE + 3) % 26
- return str
=end

LOWERCASE = ("a".."z").to_a
UPPERCASE = ("A".."Z").to_a

def letter_changes(str)
  str.chars.each_with_index do |char, index|
    if LOWERCASE.include?(char)
      str[index] = LOWERCASE[(LOWERCASE.find_index(char) + 3) % 26]
    elsif UPPERCASE.include?(char)
      str[index] = UPPERCASE[(UPPERCASE.find_index(char) + 3) % 26]
    end
  end
  str
end

p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')