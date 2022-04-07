require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Tony", last_name: "Walker", hourly_rate: 15)

@store1.employees.create(first_name: "Antoine", last_name: "Walker", hourly_rate: 15)

@store1.employees.create(first_name: "Anthony", last_name: "Walker", hourly_rate: 15)

@store2.employees.create(first_name: "Kate", last_name: "Kelly", hourly_rate: 15)

@store2.employees.create(first_name: "Kt", last_name: "Kelly", hourly_rate: 15)

@store2.employees.create(first_name: "Katelyn", last_name: "Kelly", hourly_rate: 15)

puts "Store 1 Employees: "
p @store1.employees

puts "Store 2 Employees: "
p @store2.employees