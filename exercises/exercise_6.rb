require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1);
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Dorris", last_name: "Kim", hourly_rate: 20)
@store1.employees.create(first_name: "Henry", last_name: "Olsen", hourly_rate: 60)

@store2 = Store.find(2);
@store2.employees.create(first_name: "Xiaoxuan", last_name: "Wang", hourly_rate: 40)
@store2.employees.create(first_name: "Yvett", last_name: "Cevan", hourly_rate: 40)
@store2.employees.create(first_name: "Todd", last_name: "Captain", hourly_rate: 40)
@store2.employees.create(first_name: "Lily", last_name: "Rirr", hourly_rate: 40)

@store4 = Store.find(4);
@store4.employees.create(first_name: "Joe", last_name: "Doe", hourly_rate: 20)

@store5 = Store.find(5);
@store5.employees.create(first_name: "Donald", last_name: "Trump", hourly_rate: 30)

@store6 = Store.find(6);
@store6.employees.create(first_name: "Bob", last_name: "Lee", hourly_rate: 50)