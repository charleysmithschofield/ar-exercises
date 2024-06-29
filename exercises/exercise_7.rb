require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Attempt to create a store with incomplete data
puts "Enter a store name:"
store_name = gets.chomp

new_store = Store.new(name: store_name)

# Attempt to save the store and display errors if any
if new_store.save
  puts "Store '#{store_name}' successfully created!"
else
  puts "Failed to create store. Errors:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
