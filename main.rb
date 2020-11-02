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

puts square(2)

def square? (num)
  Math.sqrt(num).to_i**2 == num
end

puts square (2)

## reverse a string of text algo
