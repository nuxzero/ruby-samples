# In Ruby, you can use * to repeat a string a number of times.
puts "hello " * 2 # output: hello hello

# times method is a method that repeats a block of code a number of times.
20.times { puts "hello " }

# Random numbers
puts rand(100) # output: random number between 0 and 100

# Converting a string to a number
puts "5".to_i + "10".to_i # output: 15

# If it can't convert it, it will return 0
puts "hello".to_i # output: 0

# Converting a string to a float
puts "10".to_f # output: 10.0

# COnverting a number to a string
puts 5.to_s # output: "5"