=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. 
The longest of these has a length of 2. 

Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. 
Vowels are any of aeiou.

----

input: a lowercase string
  - only consists of alphabetic characters
  - has no spaces
return: the length of the longest vowel substring
rules:
  - vowels are any of aeiou

----

algorithm:
- initialize count to 0
- initialize longest to 0
- intialize last_index to size of str - 1

- from 0 up to last_index, for each index do the following:
  - if str[index] =~ [/aeiou/]
    - increment count by 1
    - if count > longest, reassign longest to count
  - else, reassign count to 0
- return longest

=end

def solve(str)
  count = 0
  longest = 0
  last_index = str.size - 1

  0.upto(last_index) do |index|
    if str[index] =~ /[aeiou]/
      count += 1
      longest = count if count > longest
    else
      count = 0
    end
  end

  longest
end



p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
