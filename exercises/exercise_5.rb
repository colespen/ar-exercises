require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)
@average_revenue = Store.average(:annual_revenue)
@highest_annual_count = 
Store.where("annual_revenue >= 1000000").count

puts "Total revenue of all stores: ", @total_revenue
puts "Average revenue of all stores: ", @average_revenue

puts "Stores generating >= $1M: ", @highest_annual_count
