require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Lindsay", last_name: "Virani", hourly_rate: 90)

@store1.employees.create(first_name: "Tolly", last_name: "Tiny", hourly_rate: 100)

@store1.employees.create(first_name: "Booms", last_name: "Had", hourly_rate: 41)

@store1.employees.create(first_name: "Wendel", last_name: "Lint", hourly_rate: 60)

employee_five = @store2.employees.create(first_name: "", last_name: "", hourly_rate: 290)

@store2.employees.create(first_name: "Hillary", last_name: "Shale", hourly_rate: 50)

@store2.employees.create(first_name: "Temple", last_name: "Whale", hourly_rate: 64)

@store2.employees.create(first_name: "Lohgan", last_name: "Meldo", hourly_rate: 55)

puts employee_five.errors.full_messages