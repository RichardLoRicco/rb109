=begin

Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be
rearranged to match str2, otherwise returns false.

Notes:
Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.

----

input: two strings, str1 and str2
return: true if a portion of str1's characters can be rearranged to match str2, otherwise false
rules:
  - only lowercase letters will be used
  - no punctuation or digits will be included
notes:
  - we can check this by checking whether str includes all of str2's characters
    -> iterate through str2's chars and check whether str1's count is at least as high as the count of str2

----

algorithm:
- iterate through each uniq character of str2, and check whether the following is true for all chars:
  - str1's count of char is greater than or equal to str2's count of char

=end

def scramble(str1, str2)
  str2.chars.uniq.all? { |char| str1.count(char) >= str2.count(char) }
end


p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
