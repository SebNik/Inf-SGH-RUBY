number = 10
while number <= 15
    puts number
    number = number + 1
end



answer = ""
until answer == "y" || answer == "n"
  print "Your answer [y/n]? "
  answer = gets.chomp
end
puts "Your answer: #{answer}"




10.upto(15) do |number|
    puts number
end
