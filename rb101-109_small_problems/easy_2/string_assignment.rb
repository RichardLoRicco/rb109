
# Take a look at the following code:
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
# What does this code print out? Think about it for a moment before continuing.


# If you said that code printed
Alice
Bob
# you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name


# What does this print out? Can you explain these results?

# This will print out:
BOB
BOB
# Here we are not dealing with reassignment (which we were in the first example).
# Rather, the mutating String#upcase! method is invoked on the string object
# referenced by local variables name and save_name. Therefore, the string object
# that they reference will be mutated so that its value is BOB. Both name and 
# save_name continue to reference this same string object.