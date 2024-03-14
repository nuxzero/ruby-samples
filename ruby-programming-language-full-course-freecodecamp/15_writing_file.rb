# 'a' is for append mode to write file at the end of the file.
File.open("employees.txt", "a") do |file|
  file.write("\nOscar, Accounting")
end

# 'w' is for write mode to write file.
# If the file is not there, it creates a new file.
# If the file is there, it overwrites the file.
File.open("index.html", "w") do |file|
  file.write("<h1>Hello</h1>")
end

# 'r+' is for read-write mode to read and write file.
# It starts at the beginning of the file.
File.open("employees.txt", "r+") do |file|
  file.readline()
  # This will write at the second line of the file.
  file.write("Overwritten\n")
end