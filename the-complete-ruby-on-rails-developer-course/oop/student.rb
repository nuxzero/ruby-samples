require_relative 'crud'

class Student
  # Include the Crud module in the Student class. 
  # Now the Student class has access to the methods in the Crud module.
  include Crud

  # attr_accessor is a Ruby method that creates getter and setter methods for the instance variables.
  attr_accessor :first_name, :last_name, :email, :username, :password

  # attr_reader is a Ruby method that creates a getter method for the instance variables.
  attr_reader :full_name

  # @first_name
  # @last_name
  # @email
  # @username
  # @password

  # Initialize method is a constructor in Ruby.
  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  # method_name=(value) is the setter method in Ruby.
  # It can call by using the object.method_name = value
  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end

  # In Rury, to_s method is used to override the default to_s method.
  # When you print an object, it will print the value of the to_s method.
  # E.g. `puts student` will print the value of the to_s method.
  def to_s
    "First name: #{@first_name}"
  end
end

# student = Student.new
# student.first_name = "John" 
# puts student.first_name

student = Student.new("John", "Doe", "john@gmail.com", "john1", "password1")
puts student


users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
 
hash = student.create_hash_digest("password1")
puts "Hash digest: #{hash}"
puts student.verify_hash_digest(hash)

# def create_hash_digest(password)
#   BCrypt::Password.create(password)
# end
 
# def verify_hash_digest(password)
#   BCrypt::Password.new(password)
# end
 
# def create_secure_users(list_of_users)
#   list_of_users.each do |user_record|
#     user_record[:password] = create_hash_digest(user_record[:password])
#   end
#   list_of_users
# end

# puts "Create secure users"
# puts create_secure_users(users)

# def authenticate_user(username, password, list_of_users)
#   list_of_users.each do |user_record|
#     if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
#       return user_record
#     end
#   end
#   "Credentials were not correct"
# end

# puts "Authenticate user"
# puts authenticate_user("mashrur", "password1", users)
# puts authenticate_user("mashrur", "password5", users)