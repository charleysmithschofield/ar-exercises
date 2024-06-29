require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Load the first store from the database and assign it to @store1
@store1 = Store.find(1)
# Load the first store from the database and assign it to @store2
@store2 = Store.find(2)

# Update the first store instance in the database (name change)
@store1.update(name: 'Tofino')

# Output the updated store name to verify the change
puts "Updated store name: #{@store1.name}"