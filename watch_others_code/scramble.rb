=begin
Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, 
otherwise, return false.

----

input: two strings, str1 and str2
return: true if a portion of str1's characters can be rearranged to match str2, otherwise false
rules:
  - all of str2's characters must be present in str2
----

algorithm:
- iterate over each character in str2, and check whether the following is true for all chars:
  - str2's count of a given char is less than or equal to str1's count 

=end

def scramble(str1, str2)
  str2.chars.all? do |char|
    str2.count(char) <= str1.count(char)
  end
end


p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
