=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle 
switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which
lights are on after n repetitions.

----

input: a number, n, denoting the total number of switches
return: an array that identifies which lights are on after n repetitions
rules:
  - all switches are initially off
  - each time you toggle the switches, you increment the toggle interval by 1
    -> the following describes the toggling at each pass:
      1st pass: toggle all
      2nd pass: toggle 2nd, 4th, 6th, etc.
      3rd pass: toggle 3rd, 6th, 9ths, etc.
      ...
  - continue toggling until you have been through n repetitions

----

algorithm:
- initialize switches_hsh to {}
- from 1 up to number_of_switches, do the following for each switch:
    - add switch as key and false as value to switches_hsh


- from 1 up to number_of_switches times, do the following for each n:
  - iterate through all key value pairs and:
    - if key is divisible by n, switch the value (using !)
- return all keys where value is true

=end

def toggle_switches(number_of_switches)
  switches_hsh = Hash.new(0)

  1.upto(number_of_switches) do |switch|
    switches_hsh[switch] = false
  end

  1.upto(number_of_switches) do |n|
    switches_hsh.each do |switch, is_on|
      switches_hsh[switch] = !switches_hsh[switch] if switch % n == 0
    end
  end
  switches_hsh.select { |switch, is_on| is_on == true }.keys
end

p toggle_switches(5)
p toggle_switches(10)

=begin
Example with n = 5 lights:
round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
=end