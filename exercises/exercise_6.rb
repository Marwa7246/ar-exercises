require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Emily", last_name: "Mike", hourly_rate: 60)

@store1.employees.create(first_name: "Nohad", last_name: "Aly", hourly_rate: 60)

@store2.employees.create(first_name: "Francis", last_name: "Mcdonald", hourly_rate: 60)

@store2.employees.create(first_name: "Janelle", last_name: "Ford", hourly_rate: 60)

@store2.employees.create(first_name: "Emma", last_name: "Trump", hourly_rate: 60)

@store2.employees.create(first_name: "Michelle", last_name: "Obama", hourly_rate: 60)
@store2.employees.create(first_name: "Tania", last_name: "Vasily", hourly_rate: 60)





