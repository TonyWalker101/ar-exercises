require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)

@store2 = Store.find_by(id: 2)

puts "Store 1 & 2 Names: "
p @store1.name
p @store2.name

@store1.update(name: "Burnaby Incorporated")

puts "New Store 1 Name: "
p @store1.name