require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create!(name: "Surrey", annual_revenue: 224000, mens_apparel: true, womens_apparel: true)

whistler = Store.create!(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: true)

yaletown = Store.create!(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

mens_clothing_stores = Store.where(mens_apparel: true)

puts "Men's clothing stores: "
puts mens_clothing_stores

mens_clothing_stores.each_with_index do |store, index|
  puts "Store ##{index + 1}"
  puts store.name
  puts "Annual revenue: #{store.annual_revenue}"
end

store_fetch = Store.where(womens_apparel: true).where(annual_revenue: 0..1000000)

puts "Women's clothing store w/ < 1M revenue"
puts store_fetch

store_fetch.each_with_index do |store, index|
  puts "Store ##{index+1}"
  puts store.name
  puts "Annual Revenue: #{store.annual_revenue}"
end
