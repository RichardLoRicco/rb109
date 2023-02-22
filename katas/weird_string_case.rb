=begin

input: a string
return: the same string with all odd indexed characters in each word lowercased, and all even
        indexed characters uppercased
rules:
  - input string will only consist of alphabetical characters and spaces
  - spaces are only present if there are multiple words
  - words are separated by a single space
examples:
  - "String" => "StRiNg"
  - "Weird string case" => "WeIrD StRiNg CaSe"
  
----

algorithm:
split string into an array of words and transform each word as follows:
  - spit each word into chars, iterate over each char with index and transford as follows:
    - if index is odd, downcase char
    - if index is even, upcase char
  -> join each char without spaces
-> join each word with spaces

=end


def weirdcase string
  string.split(" ").map do |word|
    word.split("").each_with_index.map do |char, index|
      if index.odd?
        char.downcase
      else
        char.upcase
      end
    end.join("")
  end.join(" ")
end

# test cases
p weirdcase('This') == 'ThIs'
p weirdcase('is') == 'Is'
p weirdcase('This is a test') == 'ThIs Is A TeSt'