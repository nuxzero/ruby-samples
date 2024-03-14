friends = ["Kevin", "Karen", "Oscar", "Andy"]

for friend in friends 
  puts friend
end

friends.each do |friend|
  puts friend
end

# Looping through a range index 0 to 5
for index in 0..5 
  puts friends[index]
end
