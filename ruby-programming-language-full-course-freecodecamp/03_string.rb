phrase = "The Ruby Programming Language is amazing!  "
puts phrase.strip()                 # Remove white space from the beginning and end of the string
puts phrase.include? "Programming"  # Check if the string contains the word "Programming"
puts phrase[0]                      # Get the character at index 0 
puts phrase[0, 5]                   # Get the substring starting at index 0 and ending at index 5

# Check more about string methods at https://ruby-doc.org/3.2.2/String.html