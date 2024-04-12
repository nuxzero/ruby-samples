# https://docs.ruby-lang.org/en/3.2/Hash.html
h = { "a" => 1, "b" => 2, "c" => 3 }
h = { a: 1, b: 2, c: 3}           # You can use sylbols as keys. It sames as above
h = { :a => 1, :b => 2, :c => 3}  # Same as above
puts h.class
puts h["a"]

# Add a new key-value pair
h[:d] = 4  

# Iteration
h.each do |key, value|
  puts "#{key}: #{value}"
end

# Filter
puts h.select { |k, v| v.odd? }

# Remove a key-value pair
h.delete(:d)
puts h