=begin

Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it 
should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; 
they just don't count when toggling the desired case.

Example:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


input: a string
return: a new string whose alphabetic characters alternate between upper and lowercase
rules:
  - ignored non-alphabetic characters when determining whether it should uppercase or lowercase each letter
  - non-alphabetic characters should still be included in the return value, they just don't count when
    toggling the desired case

----

algorithm:
- initialize staggered_string to ""
- initialize need_upper to true

- split string into an array of chars and iterate over it so that for each char:
  - if char is alphabetic:
      - if need_upper is true:
        - upcase char
      - if need_upper is false:
        - downcase char
      - swap boolean value for need_upper
      - add char to staggered_string
  - return staggered_string

=end

def staggered_case(string)
  staggered_string = ""
  need_upper = true

  string.chars do |char|
    if char =~ /[a-zA-Z]/
      need_upper ? char = char.upcase : char = char.downcase
      need_upper = !need_upper
    end
    staggered_string << char
  end
  staggered_string
end

# Test Cases:
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'