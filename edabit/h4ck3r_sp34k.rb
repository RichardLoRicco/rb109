=begin

Create a function that takes a string as an argument and returns a coded (h4ck3r 5p34k) version of the string.

Notes
In order to work properly, the function should replace all "a"s with 4, "e"s with 3, "i"s with 1, "o"s with 0, and "s"s with 5.

----

input: a string
return: a coded version of the input string
rules:
  - function should replace all a's with 4, e's with 3, i's with 1, o's with 0, and s's with 5

----

algorithm:
- use gsub to replace:
  - a with 4
  - e with 3
  - i with 1
  - o with 0; and
  - s with 5
=end

def hacker_speak(string)
  string.gsub!("a", "4")
  string.gsub!("e", "3")
  string.gsub!("i", "1")
  string.gsub!("o", "0")
  string.gsub!("s", "5")
  string
end


# Examples
p hacker_speak("javascript is cool") == "j4v45cr1pt 15 c00l"
p hacker_speak("programming is fun") == "pr0gr4mm1ng 15 fun"
p hacker_speak("become a coder") == "b3c0m3 4 c0d3r"