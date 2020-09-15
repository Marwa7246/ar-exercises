require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "sum of total revenue: #{Store.sum(:annual_revenue)}"

puts "Average of annual revenue: #{Store.average(:annual_revenue)}"

@high_revenue_stores = Store.where("annual_revenue > 1000000")

puts @high_revenue_stores.count

