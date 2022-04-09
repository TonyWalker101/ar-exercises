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

store_name = Store.first.name

puts "The name of the first store is: "
p store_name

new_store = Store.create!(name: store_name)

# error message received for the above:
 
# Validation failed: Annual revenue is not a number, Mens apparel We need both men and women's apparel!, Womens apparel We need both men and women's apparel! (ActiveRecord::RecordInvalid)
