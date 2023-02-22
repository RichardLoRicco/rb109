=begin
Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

Examples:
top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]
Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input text.
Avoid sorting the entire array of unique words.

----

input: a string (possibly containing words)
return: an array containing the top 3 most prevalent words in the input string
rules:
  explicit:
    - word is a string of letters a-z which can contain apostrophes
    - ignore case
  implicit:
    - spaces are used to determine words
  ---

  algorithm:
  - split string downcased into array of words (using spaces)
    -> assign to words
    - iterate over each word and do the following:
      - remove all non-alphabetic and non-apostrophe characters from each word (gsub!)
      - if word contains apostrophe:
        - split word into array of chars, and iterate over it with index, so that for each char and index: 
          - if char is apostrophe, and index - 1 or index + 1 don't have a-z char:
            remove apostrophe
  - invoke uniq method on words array
    -> assign that to uniq_words
  - iterate over uniq_words and sort each word by:
    - the word's given count in arr
    -> take slice of returned sorted array for the last 3 elements
    -> reverse



=end

def top_3_words(string)
  words = string.downcase.split
  words.each do |word|
    word.delete!("^a-z'") # ("^a-z'")
    if word.include?("'")
      word.chars.each_with_index do |char, index|
        if char == "'" && (word[index -1] =~ /[^a-z]/ || word[index +1] =~ /[^a-z]/ )
          word.delete!("'")
        end
      end
    end
  end

  return [] if words == [""]
  
  uniq_words = words.uniq
  uniq_words.delete("")
  

  uniq_words.sort_by { |word| words.count(word) }.reverse[0..2]

  
end


p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
# coursing. An olla of rather more beef than mutton, a salad on most
# nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
# on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
