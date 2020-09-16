require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'


puts "Exercise 8"
puts "----------"

# Your code goes here ...

Employee.before_create :password_generation
# In case of (after_create), the password is not saved----> we have to update the employee with the generated password(more code) (line 31)

# In case of (before_save), the password is generated each time the employee is saved (at create and update)----> the password will change when we update the first_name, or the hourly_rate which is not recommended



def generate_code
  charset = Array('A'..'Z') + Array('a'..'z')
  Array.new(8) { charset.sample }.join
end

private
def password_generation
  self.password = generate_code
  # self.update(password: generate_code)
end

employee10=@store1.employees.create(first_name: "aaaa", last_name: "bbbbb", hourly_rate: 60)

# @employee10 = Employee.last
# puts "#{@employee10.first_name}, #{@employee10.password}" 

# @employee10.update(first_name: "ccccc")
# puts "#{@employee10.first_name}, #{@employee10.password}" 

puts employee10.valid?
puts employee10.errors.full_messages












