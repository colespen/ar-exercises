require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store_surrey = Store.create(
  name: 'Surrey', 
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
  )
store_whistler = Store.create(
  name: 'Whistler', 
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
  )
store_yaletown = Store.create(
  name: 'Yaletown', 
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
  )

  @mens_store = Store.where("mens_apparel = true")
  
  @mens_store.each do |store|
    puts "Store name: #{store.name}" 
    puts "Annual revenue: #{store.annual_revenue}"
    puts "- - - - - - - - - - - - -"
  end

  @womens_store = Store.where("womens_apparel = true and annual_revenue < 1000000")
  
  @womens_store.each do |store|
    puts "Store name: #{store.name}" 
    puts "Annual revenue: #{store.annual_revenue}"
    puts "- - - - - - - - - - - - -"
  end
  