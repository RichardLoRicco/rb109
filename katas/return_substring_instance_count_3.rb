=begin
Return substring instance count

Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

----

input: two strings, full_text and search_text
return: the number of times the search_text is found within the full_text
examples:
  - solution('aa_bb_cc_dd_bb_e', 'bb') -> should return 2 bc 'bb' shows up twice
  - solution('aaabbbcccc', 'bbb') -> should return 1 bc 'bbb' shows up once
rules:
  - search_text must show up exactly, in order
  - going to assume that case matters, even though test cases are all lowercase

----

algorithm:
- invoke scan method on full_text and pass in search_text as argument
  -> return size of returned array

=end

def solution(full_text, search_text)
  full_text.scan(search_text).size
end


p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
