=begin
String#upcase! is a destructive method, so why does this code print HEY you instead of HEY YOU?

Modify the code so that it produces the expected output.

=end

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

=begin

Here we invoke the mutating String#upcase! method on each character in the array that is returned whe we invoke the String#chars method
on the string object referenced by name. Therefore, we are not mutating the string object referenced by name, but rather we are mutating
each string object element in the array object that is returned above. Therefore, when we attempt to pass in name to the puts method, 
the method still outputs lowercase letters.

In order to attain our desired result, we invoke the map method on the array object mentioned above, and then convert the array into a string.
Finally, we reassign name to this string object, which will ensure the code prints HEY YOU rather than HEY you.

=end

def shout_out_to(name)
  name = name.chars.map { |c| c.upcase }.join("")

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'