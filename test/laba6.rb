require 'my_gem'

random_array = Array.new(10) { rand(1..10) }
duplicates = MyGem::FindDuplicates.find(random_array)

puts "Масив випадкових чисел: #{random_array}"
puts "Дублікати: #{duplicates}"
