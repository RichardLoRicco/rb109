=begin
Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. 
In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy 
the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word.

For example,
solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

----

input: an array of words
return: an array of the number of letters that occypy their positions in the alphabet for each word
rules:
  - input consists of alphabet characters, both upper and lowercase
  - input contains no spaces

-----

algorithm:
- initialize ALPHABET to an array from "a" to "z"
- iterate through each word in arr and for each word, transform as follows:
  - word = downcased word
  - initialize count to 0
  - iterate over each char in word with index, and for each char and index:
    - increment count by 1 if index is equal to (char's position in alphabet + 1)
  - return char

=end

ALPHABET = ("a".."z").to_a

def solve(arr)
  arr.map do |word|
    word = word.downcase
    count = 0

    word.chars.each_with_index do |char, index|
      count += 1 if ALPHABET.index(char) == index
    end
    
    count
  end
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
