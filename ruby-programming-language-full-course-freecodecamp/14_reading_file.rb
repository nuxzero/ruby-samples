# 'r' is the mode for reading.
File.open("employees.txt", "r") do |file|
  puts file.read().include? "Jim"

  # Readline method reads the file line by line.
  for line in file.readlines()
    puts line
  end
end

# You can also use the read method to read the entire file.
# But you have to close the file after reading it.
file = File.open("employees.txt", "r")
puts file.read()
file.close()

# 'rb' is the mode for reading binary files.
File.open("employees.txt", "rb") do |file|
  # Read the file in chunks of 10 characters.
  while (chunk = file.read(10))
    puts chunk
  end
end

# Check more about file modes at https://stackoverflow.com/questions/3682359/what-are-the-ruby-file-open-modes-and-options

# Mode |  Meaning
# -----+--------------------------------------------------------
# "r"  |  Read-only, starts at beginning of file  (default mode).
# -----+--------------------------------------------------------
# "r+" |  Read-write, starts at beginning of file.
# -----+--------------------------------------------------------
# "w"  |  Write-only, truncates existing file
#      |  to zero length or creates a new file for writing.
# -----+--------------------------------------------------------
# "w+" |  Read-write, truncates existing file to zero length
#      |  or creates a new file for reading and writing.
# -----+--------------------------------------------------------
# "a"  |  Write-only, starts at end of file if file exists,
#      |  otherwise creates a new file for writing.
# -----+--------------------------------------------------------
# "a+" |  Read-write, starts at end of file if file exists,
#      |  otherwise creates a new file for reading and
#      |  writing.
# -----+--------------------------------------------------------
# "b"  |  Binary file mode (may appear with
#      |  any of the key letters listed above).
#      |  Suppresses EOL <-> CRLF conversion on Windows. And
#      |  sets external encoding to ASCII-8BIT unless explicitly
#      |  specified.
# -----+--------------------------------------------------------
# "t"  |  Text file mode (may appear with
#      |  any of the key letters listed above except "b").
