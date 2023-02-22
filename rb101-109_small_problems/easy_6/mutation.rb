# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
The above code will print ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo'].
It will print this because we mutate the string object elements of the array object referenced by `array1` which start with `'C'` or `'S'` and these same string objects
are referenced by `array2`. Therefore, when we mutate the objects inside of the block passed to the`each` method incovation on `array1`,
the changes are also reflected when we output `array2`.

=end



=begin
Further Exploration
How can this feature of ruby get you in trouble? How can you avoid it?

This feature of ruby can get you into trouble because you could attempt to mutate a string object inside one array object and end up 
unintentially seeing that change reflected within in another array object if it contains the same string object as one of its elements.

You can avoid it by passing duplicated values to `array2`; this can be accomplished by invoking the `dup` method as follows: `array1.each { |value| array2 << value.dup }`

=end