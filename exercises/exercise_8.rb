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

new_employee= @store2.employees.create(first_name: "Wendy", last_name: "Secret", hourly_rate: 105)

puts "#{new_employee.first_name}'s PASSWORD: #{new_employee.password}"