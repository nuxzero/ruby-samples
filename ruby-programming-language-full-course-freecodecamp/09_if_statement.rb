ismale = false
istall = true
if ismale and istall      # In Ruby, 'and' is used instead of '&&' but '&&' is also valid.
  puts "You are male"
else
  puts "You are female"
end

unless istall             # In Ruby, 'unless' is used instead of '!' but '!' is also valid.
  puts "You are not tall"
end

puts "You are not tall" unless istall # One line if statement.
