=begin

Create a function to return the amount of potatoes there are in a string.

----

input: a string
return: the count of occurences of "potato" in the input string

----

algorithm:
- initialize clone_string to dup of string
- initialize potato_count to 0
- loop as follows: 
  - if clone_string includes "potato":
    - remove first occurence of "potato" from clone_string
    - increment potato_count by 1
  - else:
    - break out of loop

- return count

=end

def potatoes(string)
  clone_string = string.dup
  potato_count = 0

  loop do
    if clone_string.include?("potato")
      clone_string.sub!("potato", "")
      potato_count += 1
    else
      break
    end
  end

  potato_count
end


# Examples
p potatoes("potato") ==  1
p potatoes("potatopotato") ==  2
p potatoes("potatoapple") == 1