require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)
# store id: 3 is deleted in exercise_3

@store1.update(annual_revenue: 200) # rounds down => 99