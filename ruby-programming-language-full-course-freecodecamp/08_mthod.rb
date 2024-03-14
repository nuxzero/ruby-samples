def sayhi(name="no name", age=-1)
  puts "Hello #{name}, you are #{age} years old."
end

sayhi("Mike", 20)

def cube(num)
  # In Ruby, the last line of a method is the return value.
  num * num * num
end

puts cube(3)

def sample
  # Returns multiple values
  return "Hello", "World"
end

# Use index to get the value
puts sample[1]
