=begin

A collection of spelling blocks has two letters per block, as shown in this list:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block.

Each letter in each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

----

input: a string
  - consisting of a word
  - true if word passed in can be spelled from given set of blocks
  - false if not
rules:
  - the spelling block has two letters per block
  - each letter in each block can only be used once
  - the block limits the words you can spell with the blocks to just those words that don't use both letters from any given block

notes:
- what data structure can we use to house the blocks?
  - array
  - hash


----

algorithm:
initialize array called spelling_block -> elements consist of BO, XK, etc.

define block_word? method that accepts 1 parameter word
  # iterate over characters in word 
  - iterate over each character in word, and for each char:
    - does spelling_block include char downcased?




=end

SPELLING_BLOCK = %w( BO XK DQ CP NA GT RE FS JW HU VI LY ZM ).freeze

def block_word?(word)
  word_upcase = word.upcase

SPELLING_BLOCK.none? do |block|
  word_upcase.count(block) >= 2
end

end


# Examples:
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true