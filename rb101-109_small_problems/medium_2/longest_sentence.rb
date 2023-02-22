=begin


Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.



Example Text:
Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.

The longest sentence in the above text is the last sentence; it is 86 words long. (Note that each -- counts as a word.)

----

input: a string
- consists of a number of sentences
output: a string
- consists of the longest sentence in the input string based on the number of words
- also consists of the number of words in the sentence
rules:
- sentences may end with periods (.), exclamation points (!), or question marks (?).
- any sequence of characters that aren't spaces or sentence-ending characters should be treated as a word
- also print the number of words in the sentence

----

algorithm:
define longest_sentence method that accepts 1 parameter, str
  # split str into an array of sentences
    - split str into an array using periods (.), exclamation points (!), and question marks (?)
      -> save as sentences_arr

  # sort array of sentences by the number of words in each sentence
    - sort sentences arr by:
        - split each sentence into an array of words using spaces
        - return the length of the array of words

  # return the longest sentence and the number of words
    - output last sentence and add string counting the number of words

=end

def longest_sentence(str)
  sentences_arr = str.split(/[.!?]/)

  sentences_arr.sort_by! do |sentence|
    sentence.split(" ").length
  end

  longest = sentences_arr[-1]

  puts longest
  puts " --> This sentence has #{longest.split(" ").length} words."
end

longest_sentence(
  "Four score and seven years ago our fathers brought forth
  on this continent a new nation, conceived in liberty, and
  dedicated to the proposition that all men are created
  equal.
  
  Now we are engaged in a great civil war, testing whether
  that nation, or any nation so conceived and so dedicated,
  can long endure. We are met on a great battlefield of that
  war. We have come to dedicate a portion of that field, as
  a final resting place for those who here gave their lives
  that that nation might live. It is altogether fitting and
  proper that we should do this.
  
  But, in a larger sense, we can not dedicate, we can not
  consecrate, we can not hallow this ground. The brave
  men, living and dead, who struggled here, have
  consecrated it, far above our poor power to add or
  detract. The world will little note, nor long remember
  what we say here, but it can never forget what they
  did here. It is for us the living, rather, to be dedicated
  here to the unfinished work which they who fought
  here have thus far so nobly advanced. It is rather for
  us to be here dedicated to the great task remaining
  before us -- that from these honored dead we take
  increased devotion to that cause for which they gave
  the last full measure of devotion -- that we here highly
  resolve that these dead shall not have died in vain
  -- that this nation, under God, shall have a new birth
  of freedom -- and that government of the people, by
  the people, for the people, shall not perish from the
  earth.")