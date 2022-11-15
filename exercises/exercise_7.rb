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

puts "Which store location would you like to create?.."
user_store = gets.chomp


store = Store.create(
  name: user_store
  )
unless store.valid?
  store.errors.full_messages.each {|err| pp "Error: " + err}
end