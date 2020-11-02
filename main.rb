# README for lesson: https://git.generalassemb.ly/samuel-casey/ruby-intro-to-ruby
=begin
  REPLs
  Joe's repl: https://repl.it/@jkeohan/intro-to-ruby-seir831#main.rb
=end

# variable assigment
hello = "hello world"
CONSTANT_VARIABLE = "k"
# puts hello
# puts CONSTANT_VARIABLE

# parallel variable assignment
name, age, exact_age = "Sam", 25, 25.4
# puts name, age

# inspecting class / type
# puts name.class, age.class, exact_age.class

# puts 2.methods OUTPUTS all methods for Integer sub-class of Numeric class

# defining functions in Ruby
def add_two (number)
    number + 2
end

# puts add_two(3)

# Defining Strings
str_literal = 'it\'s nov 2 \nnewline'
str_dbl_quotes = "it\'s nov 2 \nnewline"

# puts str_literal, str_dbl_quotes

puts 'Sam'.length