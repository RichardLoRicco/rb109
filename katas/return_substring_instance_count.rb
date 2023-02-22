=begin

Complete the solution so that it returns the number of times the search_text is found within the full_text.






=end

def solution(full_text, search_text)
  count = 0
  
  loop do
    full_text.sub!(search_text, "") ? count += 1 : break
  end
  
  count
end

# Usage example:
p solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
p solution('aaabbbcccc', 'bbb') # should return 1