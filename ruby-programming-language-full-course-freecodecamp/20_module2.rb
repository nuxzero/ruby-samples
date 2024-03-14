# require_relative is used to include the file in the same directory.
require_relative "19_module.rb"
# When you want to use the methods in the module, you can include the module in the class.
include Tools

sayhi("Mike", 20)
