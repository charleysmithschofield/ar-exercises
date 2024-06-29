require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
# Load the third store
@store3 = Store.find(3)

# Use destroy method to delete the store from the database
@store3.destroy

# Verify the store has been deleted by outputting the count 
puts "Number of stores: #{Store.count}"