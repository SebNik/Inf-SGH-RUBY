# returning first easy objects
puts "Hallo".reverse
# same with var
var = "Nebel"
puts var.reverse
# get the size of a var
var2 = "hallo welt !"
puts var2.size
# letters of string
letters = "AbcdEFghEh"
# output
puts letters
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
# output true and false
puts 42.even?
puts 42.odd?
puts 5.next
puts (2.8).round
# rounding to some values
puts (2.8).round(2)
puts (2.847489465132).round(3)
puts (2.887451223).round(5)
# working with delete
puts "Hallo Hallo Hallo!".delete('alf')
puts "Hooooooo".insert(1, "all")
# getting name
name = gets
puts "dein Name ist: #{name}"
# getting name new
name = gets.chomp
puts "dein Name ist: #{name}"