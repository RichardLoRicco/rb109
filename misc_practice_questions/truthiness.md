```rb
n = 0
puts 'true' if n = 3
```

On `line 2`, we initialize local variable `n` and assign the integer object with a value `0` to said local variable `n`. 
Therefore, local variable `n` is now referencing the integer object with value `0`

On `line 3`, we are trying to call the method `puts` and pass a string object `true`. The `puts` method will only be called, however,
if the expression that to the right of the `if` statement evaluates as true, i.e. is "truthy". Here, we see that we are reassigning the local 
variable `n` to now reference the integer object with a value of `3`. In Ruby, all expresison are considered to be truthy unless they
evaluate to `nil` or `false`. Here, the reassignment will return the value which it is assigned (here, the integer `3`) which will 
evaluate to `true`, so the `if` statement will be satisfied and the `puts` method will be called. As a result, the code will output `true`.
Furthermore, because the `puts` method returns `nil` and because the `puts` method is called in the last line of code, the code above will return `nil`. 




```ruby
def some_method
  "a string"
end

puts 'true' if some_method
```

On `lines 20-22` we are defining a method `some_method` which takes no parameters.

On `line 21` we have a string object `a string`. Since this is the last line of the method `some_method`, this method will return this string.

On `line 24` we are calling the `puts` method and poassing in the string object `true` as an argument if `some_method` evaluates to `true` (i.e., is truthy). As all Ruby expressions are truthy besides `nil` and `false`, `some_method` will evaluate to true and the `puts` method will indeed be called. As a result, `true` will be output by the program. Furthermore, the program will return `nil` because its last line contains the `put` method which always returns `nil`.