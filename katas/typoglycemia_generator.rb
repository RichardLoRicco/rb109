=begin
Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each
words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will
be sorted alphabetically

Requirement
return a string where:
  1) the first and last characters remain in original place for each word
  2) characters between the first and last characters must be sorted alphabetically
  3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions
  1) words are seperated by single spaces
  2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
  3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
  4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
  5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia

----

input: a string
  - contains one or more words, separated by spaces
return: a string where:
  1) the first and last characters remain in original place for each word
  2) characters between the first and last characters must be sorted alphabetically
rules:
  - only spaces separate words, special characters do not
  - special characters do not take the position of the non special characters
  - punctuation is limited to (-), ('), (,), and (.)
  - ignore capitalization

----

algorithm:
- mod_arr = []
- split word into an array (using spaces), and iterate over each word as follows:
    - initialize cut_arr to []
    - initialize cut_str to ""
    - initialize cut_index to 0
    - split words into array of chars, and iterate over each char with index so that for each char and index:
      - 

=end

def scramble_words(str)
  mod_arr = []
  return str if str.size <= 2
  str.split(' ').each do |word|
    # first remove and save any symbols
    cut_str = ""
    cut_idx = 0
    cut_arr = []
    word.chars.each_with_index do |ch, idx|
      cut_arr = []
      unless ("a".."z").include?(ch)  
        cut_arr << [ch, idx]
      end
    end
    word.gsub!(/[^A-Za-z]/, "")
      #
    mod_word = ""
    mod_word << word[0]
    mod_word << word[1..-2].chars.sort.join
    mod_word << word[-1]

    # add the modified word to the mod word array
    cut_arr.each do |cut_ch, cut_idx|
      mod_word = mod_word.insert(cut_idx, cut_ch)
    end
    mod_arr << mod_word
  end
  mod_arr.join(' ')
end
p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."



