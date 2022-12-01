=begin
We wrote a neutralize method that removes negative words from sentences. However, it fails to remove all of them. What exactly happens?

=end

# require 'pry'

# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.each do |word|
#     words.delete(word) if negative?(word)
#     binding.pry
#   end

#   words.join(' ')
# end

# def negative?(word)
#   [ 'dull',
#     'boring',
#     'annoying',
#     'chaotic'
#   ].include?(word)
# end

# puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

=begin

We can see that we are failing to delete one of the negative words here, namely 'boring.' Our gut likely tells us that this has
something to do with the fact that we are iterating over an array and deleting elements from it as we do so. Let's use pry to check
the values of parameter word on each iteration.

When we do so, we can see that after we the first iteration whereby string object 'dull' is assigned to word and deleted from words, 
the Array#each method's next iteration assigns 'cards' to word. Therefore, it appears that since we deleted an element of the array
we are iterating over, we skip the next iteration as the index positions shift when we delete an element from the calling array.

We can fix this by invoking the destructive Array#reject! method on the words array. 

=end


def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) }

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.