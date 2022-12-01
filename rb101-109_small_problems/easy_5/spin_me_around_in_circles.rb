=begin

You are given a method named spin_me that takes a string as an argument and returns a string that
contains the same words, but with each word's characters reversed. Given the method's implementation,
will the returned string be the same object as the one passed in as an argument or a different object?

=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

=begin
The returned string will be a different object. Since we are invoking the split method on str, we are dealing with a different object (an array)
Just because we convert the array back to a string object using the join method does not mean we end up with the original object.

=end

def spin_me(str)
  p str.object_id
  str.split.each do |word|
    word.reverse!
  end.join(" ")
  p str.object_id
  p str
end

spin_me("hello world") # "olleh dlrow"