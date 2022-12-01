=begin

The following code prompts the user to set their own password if they haven't done so already, and then prompts them to login with that password. 
However, the program throws an error. What is the problem and how can you fix it?

Once you get the program to run without error, does it behave as expected? Verify that you are able to log in with your new password.

=end

# password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end

# def verify_password
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   set_password
# end

# verify_password

=begin
When we run this program, Ruby throws a NameError on line 23. 

The reason we get this error is because we are unable to access the local variable password from within the set_password method.

Methods have self-contained scope. Therefore, on line 15 we are initializing a method scoped local variable password and assigning it to our input,
rather than reassigning local variable password initialized on line 10. 

We also need to pass password into the verify_pasword method so we are able to access it within the method. 

In order to fix these problems, we can reassign password to the return value of the set_password invocation on line 31, add password
as a parameter to the verify_password definition, and add password as an argument when we invoke the verify_password method.

=end

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)
