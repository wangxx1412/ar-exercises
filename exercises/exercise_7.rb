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

# Store.create(name:"Co", annual_revenue: 100000, mens_apparel:true, womens_apparel:true)
# Store.create(name:"Coquilium", annual_revenue: -1, mens_apparel:true, womens_apparel:true)
# Store.create(name:"Coquilium", annual_revenue: 100000)

# Ask the user for a store name (store it in a variable)
@store_name = gets.chomp
@errors = Store.create(name:@store_name).errors.messages

@errors.each {|error| puts "#{error[1][0]}"}