=begin

Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

----

input: a string (consisting of a URL)
return: a string with just the domain name
rules:
  - domain name may be www. or http:// or https://
  - domain name appears to end in "."
notes:
  - thinking about removing the three parts before the domain name, then finding index of the first '.', then slicing before that index
  - if I were able to ask a question I would ask if I need to account for any other chars before the domain name than the test cases

----

algorithm:
- initialize domain to a dup of url
- use delete! to delete:
  - http://
  - https://
  - www.
- find index of first occurrence of '.'
    -> take slice of domain from index 0 up to but not including the returned index above


=end

def domain_name(url)
  domain = url.dup

  domain.gsub!("http://", "")
  domain.gsub!("https://", "")
  domain.gsub!("www.", "")

  stop_index = domain =~ /[.]/
  domain[0...stop_index]
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
