# Check more about Array https://docs.ruby-lang.org/en/3.2/Array.html
arr = [1,2,3,4,5]

# %w is a shortcut to create an array of strings  
arr = %w[one two three]
arr = %w(one two three) # same as above
puts arr.last
puts arr[1]

arr << "four" # add an element to the end of the array
puts arr.last

# Create a range
x = 1..100    # 1 to 100
puts x.class  # It's Range object
puts x.to_a   # convert to an array

az = "a".."z"   # Range also works with letters 
puts az.to_a

puts ["hello", "hello"].uniq  # remove duplicates
puts [1,2,3,4,5].include?(3)  # check if an element is in the array
puts [1,2,3,4,5].empty?       # check if the array is empty
puts arr.pop                  # return the last element and remove it from the array

# Iteration
# In Ruby, it prefers to use the .each method to iterate over an array.
arr.each do |e|
  puts e
end

for e in arr
  puts e
end

arr.each { |e| puts e }

# Select method is used to filter an array
odds = (1..100).to_a.select { |n| n.odd? }
puts odds

