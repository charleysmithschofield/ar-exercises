require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Add employees to @store1 (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 45)
@store1.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 50)

# Add employees to @store2 (Richmond)
@store2.employees.create(first_name: "Alice", last_name: "Johnson", hourly_rate: 55)
@store2.employees.create(first_name: "Bob", last_name: "Brown", hourly_rate: 40)
@store2.employees.create(first_name: "Charlie", last_name: "Davis", hourly_rate: 65)

# Output confirmation
puts "Employees added to #{@store1.name}"
@store1.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name} - Hourly Rate: $#{employee.hourly_rate}"
end

puts "\nEmployees added to #{@store2.name}"
@store2.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name} - Hourly Rate: $#{employee.hourly_rate}"
end
