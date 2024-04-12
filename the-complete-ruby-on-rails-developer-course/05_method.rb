# In Ruby, the last expression is always returned. 
# You can use the 'return' keyword to return a value from a method.
def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

puts multiply(10, 20)
puts multiply 10, 20