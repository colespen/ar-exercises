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

puts "Which store location are you looking for?.."
user_input_location = gets.chomp


store_from_user = Store.create(
  name: user_input_location
  )

puts store_from_user.errors.full_messages
