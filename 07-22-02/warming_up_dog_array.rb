require_relative "dog"

dogs = [
    Dog.new("Rex", 5),
    Dog.new("Tim", 15),
    Dog.new("Tom", 15)
]

dogs[0].bark
puts dogs[1].info
dogs[2].grow_by(15)
puts dogs[2].info
dogs[2].bark
