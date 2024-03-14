# Module is a collection of methods and constants that can be used across multiple classes.
module Tools
  def sayhi(name="no name", age=-1)
    puts "Hello #{name}, you are #{age} years old."
  end

  def cube(num)
    # In Ruby, the last line of a method is the return value.
    num * num * num
  end

  def sample
    # Returns multiple values
    return "Hello", "World"
  end
end

# When you want to use the methods in the module, you can include the module in the class.
include Tools

sayhi("Mike", 20)
puts cube(3)
puts sample