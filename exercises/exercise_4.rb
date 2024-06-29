require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Create 3 more stores
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Outputting the number of stores
puts "Number of stores: #{Store.count}"

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Loop through each of these stores and output their name and annual revenue
@mens_stores.each do |store|
  puts "Men's store: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel that are generating less that $1M in annual revenue
@womens_stores_under_1M = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

# Loop through each of these stores and output their name and annual revenue
@womens_stores_under_1M.each do |store|
  puts "Women's store under $1M: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end
