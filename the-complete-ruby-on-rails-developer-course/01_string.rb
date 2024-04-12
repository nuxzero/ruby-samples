# String concatenation
first_name = "John"
last_name = "Doe"
puts first_name + " " + last_name

# String interpolation
puts "My first name is #{first_name} and my last name is #{last_name}"

# Methods, how to find them
puts first_name.class   # Get the class name
puts first_name.methods # Get all the methods available for the object

sentence = "Welcome to the jungle"
puts sentence.sub("the jungle", "utopia") # Replace the first occurrence of "the jungle" with "utopia"

# Common methods

# Variable assignment
# In Ruby it always passes by value.
text1 = "Hello"
text2 = text1 # text2 is referencing to the value of text1
puts text2 # output: Hello
text1 = "World"
puts text2 # output: Hello

# Escaping
# In Ruby you can escape characters using the backslash. These are sepecial characters in Ruby.

puts "Hello, \"World\""
