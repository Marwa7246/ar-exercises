require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
  

  Employee.validates :first_name, presence: true
  Employee.validates :last_name, presence: true
  Employee.validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}

  Employee.validates :store, presence: true



employee1 = @store1.employees.create(first_name: "Tania", hourly_rate: 10)

puts employee1.valid?
puts employee1.errors.full_messages

Store.validates :name, length: { minimum: 3 }
  Store.validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 120}

Store.validate :men_or_women

def men_or_women
  errors.add(:base, "Men or women apparel needs a value") unless mens_apparel.present? || womens_apparel.present?
end

  # Store.validates :mens_apparel, presence: { message: "Must have a value" }, unless: :womens_apparel

user_response = gets.chomp

store7= Store.create(name: user_response, annual_revenue: 10)

puts store7.valid?
puts store7.errors.full_messages




