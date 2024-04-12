if true
  puts "This is true"
else 
  puts "This is false"
end

score = 40
if score >= 70
  puts "You passed"
elsif score >= 50
  puts "You almost passed"
else
  puts "You failed"
end

unless score < 50
  puts "You passed"
else
  puts "You failed"
end
