=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle 
switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:
round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


input: an integer
- denotes the total number of switches
output: return an array
- identifies which lights are on after n repetitions
rules:
- bank of switches from 1 to n, all of which are off initially
- walk down and toggle every switch, then 2, 4, 6, then 3, 6, 9, etc.
  -> process is repeated until n repetitions

  algorithm:
  define method initialize_lights that accepts 1 parameter, number_of_lights
    initialize lights to {}
    From 1 up to number_of_lights, do the following for each num:
      add key value pair: num: off to lights hash
    implicitly return lights hash
  
  define method toggle_lights which accepts 1 parameter lights
      From 1 up to the size of lights, do the following for each num
        For each light and state in lights hash, do the following:
          if light is evenly divisible by num:
            - if state is "off" then change it to "on", otherwise change it to "off"
          

  define method lights_on which accepts 1 parameter lights
      check which value is equal to "on"
        -> return the associated keys

  
  invoke initialize_lights method and pass in 5 as an argument -> assign return value to lights

  invoke toggle_lights method and pass in lights as an argument

  invoke lights_on method and pass in lights as an argument

=end

def initialize_lights(number_of_lights)
  lights = {}
  1.upto(number_of_lights) { |num| lights[num] = "off" }
  lights
end

def toggle_lights(lights)
  1.upto(lights.size) do |num|

    lights.each do |light, state|
      if light % num == 0
       lights[light] = (state == "off?") ? "on" : "off"
      end
    end

  end
  
end

def lights_on(lights)
  lights.select { |_light, state| state == "on" }.keys
end

lights = initialize_lights(5)


lights = toggle_lights(lights)


p lights_on(lights)