require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require "bigdecimal"

puts "Exercise 5"
puts "----------"

# Your code goes here ...

revenue_sum = Store.sum(:annual_revenue)

puts "Revenue sum for all stores: "
puts revenue_sum

revenue_avg = Store.average(:annual_revenue)

puts "Average revenue for all stores: "
puts revenue_avg

high_earning_stores = Store.where(annual_revenue: 1000000..BigDecimal("Infinity")).count

puts "Number of high earning stores: "
puts high_earning_stores
