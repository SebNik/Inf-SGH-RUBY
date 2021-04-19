# main file
# this the main class handling all other classes
class Animal

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def walk
    puts "#{name}: I walk."
  end

  def talk
    puts "#{name}: #{sound}, #{sound}."
  end
end

# this class handles all animals that swim
class WaterAnimal < Animal
  def swim
    "#{name}: I am swimming!"
  end
end

# all animals that walk on the face of the earth
class LandAnimal < Animal
  def walk
    "#{name}: I walk."
  end
end

# handle all animals that can fly, can also all walk
class AirAnimal < LandAnimal
  def fly
    puts "#{name}: I believe I can fly !"
  end
end

# the duck animal
class Duck < AirAnimal
  def sound
    'quak'
  end
end

# the fish animal
class Fish < WaterAnimal
  def sound
    'blub'
  end
end

# the cat animal
class Cat < LandAnimal
  def sound
    'meow'
  end

  def sneak
    puts "#{name}: I sneak."
  end
end

# the dog animal
class Dog < LandAnimal
  def sound
    'woof'
  end
end

fish = Fish.new('Fish')

duck = Duck.new('Duck')

duck.fly
duck.walk
duck.talk

fish.swim
fish.talk


