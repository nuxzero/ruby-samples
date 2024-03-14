# luck_nums = [4, 8, 15, 16, 23, 42]
# num = 10 / 0

begin 
  luck_nums["dog"]
  # num = 10 / 0
rescue ZeroDivisionError
  puts "Division by zero error"
rescue NameError => e
  puts "Wrong type cause: #{e}"
end

def divide(num1, num2)
  begin
    answer = num1 / num2
  rescue ZeroDivisionError
    puts "Division by zero error"
  rescue
    puts "General error"
  end
end

puts divide(10, 0)