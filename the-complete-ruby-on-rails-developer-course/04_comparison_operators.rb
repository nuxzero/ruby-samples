# ==
# !=
# >
# <

puts 10 == 10
puts 10 != 10
puts 10 > 10
puts 10 < 10
puts "hello" == "hello"
puts 10 == "10".to_f # output: true
puts 10 === 10.0 # output: true
puts 10.eql?(10.0) # output: false (checks if the value and the type are the same)