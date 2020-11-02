# README for lesson: https://git.generalassemb.ly/samuel-casey/ruby-intro-to-ruby
=begin
  REPLs
  Joe's repl: https://repl.it/@jkeohan/intro-to-ruby-seir831#main.rb
=end

### variable assigment
hello = "hello world"
CONSTANT_VARIABLE = "k"
# puts hello
# puts CONSTANT_VARIABLE

### parallel variable assignment
name, age, exact_age = "Sam", 25, 25.4
# puts name, age

### inspecting class / type
# puts name.class, age.class, exact_age.class

# puts 2.methods OUTPUTS all methods for Integer sub-class of Numeric class

### defining functions in Ruby
def add_two (number)
    number + 2
end

# puts add_two(3)

### Defining Strings
str_literal = 'it\'s nov 2 \nnewline'
str_dbl_quotes = "it\'s nov 2 \nnewline"

# puts str_literal, str_dbl_quotes


str = "hello"

### predicate methods
str.empty? # => false
"".empty? # => true

### regex
str =~ /[aeiou]{2}/ # => nil: no double vowels in "hello"
str =~ /[aeioul]{2}/ # => : no double vowels in "hello"
str =~ /[l]{2}/ # => 2: double ll starting at index 2 in "hello"
str.match(/[aeiou]/) {|m| m.to_s} # => "e": return first vowel

### other methods
'Sam'.length # => 3
"Sam".size # => 2 (.size is same as .length)
str.index("l") # => 2: index of first l in string (similar to indexOf in JS)
str.concat("!") # concats
str.insert(6, " :)") # inserts at specified index, altering original value
str.slice(0, 5) # Same as s[0,5]. Returns a substring
str.slice!(5,6) # Deletion. Same as s[5,6]="". Returns deleted substring
str.eql?("hello world") # False. Same as ==
#### ! is a mutator method -- it doesn't do it permanently
# puts str # => hello
str.upcase
# puts str # => hello
str.upcase! 
# puts str # => HELLO

### interpolation
"I have #{13 * 4} cards" # => "I have 52 cards"

### conversion methods
# puts "foo" + 2.to_s # => foo2
#### converts to integer
# puts "5".to_i + 2 # => 7


### Loops

#### while
# i = 3
# while i < 10 do
#   puts i += 1
# end

#### .upto (for substitute)
# 1.upto(50) do |i|
#     puts i
# end


#### .times (for substitute)
# i = 0
# 50.times do |i|
#     i += 1
#     puts i
# end

def square (num)
  Math.sqrt(num).to_i**2
end

# puts square(2)

def square? (num)
  Math.sqrt(num).to_i**2 == num
end

# puts square (2)

## reverse a string of text algo

# REVERSE A STRING OF TEXT

# Write a method called reverse_string that takes in a string and prints the string in reversed order

# Methods in ruby are written as follows: 
#  - def is used instead of function
#  - there are no curly braces
#  - the mehtod is closed using the end keyword
#  - a single parameter can be defined using a space

# METHOD IS REALLY A FUNCTION IN JS
def method_name param_name
  
end

# Experiment with all of the following looping constructs

# .times
# .upto 
# .downto

# Bonus Method
# .each (array specific and might require some research) 


# The following variables can be used for each solution
word = 'cat'
rev_word = ''

# .times
## psuedo
def reverse_str word
  rev_word = ''
  (word.length).times do |i|
    rev_word.prepend(word[i])
  end
  puts rev_word
end

# reverse_str word

# .upto
def rev_str_2 word
  rev_word = ''
  i = 0
  i.upto(word.length - 1) do
    char = word[i]
    rev_word.prepend(char)
    i += 1
  end
  puts rev_word
end

# puts rev_str_2 "Cat"


# .downto
def rev_str_3 word
  rev_word = ''
  num = word.size - 1
  num.downto(0) do |i|
    rev_word.concat(word[i])
    i -= 1
  end
  puts rev_word
end

# puts rev_str_3 "CAt"

# Bonus Method
# .each
def rev_str_4 word
  rev_word = ''
  word.split("").each do |char|
    rev_word.prepend(char)
  end
  puts rev_word
end

# rev_str_4 "Kitty"

# BONUS: Write a method called is_palindrome that will return true if a given input is a palindrome and false if it's not.


# Input: 'radar'
# Output: true

# Input: 'ruby'
# Output: false

# Input: 'race car' or 'Race car' 
# Output: true

# MUST WRITE PSEUDOCODE FIRST

## PSEUDOCODE

# GET string
# REVERSE string
# if reversed string === string
# return true
# else return false

def is_palindrome(word)
  reversed_word = word.reverse
  if reversed_word == word
    return true
  else
    return false
  end
end

puts is_palindrome("radar")