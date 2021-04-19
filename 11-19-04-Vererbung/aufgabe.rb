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

class Water_animal < Animal
  def swim
    "#{name}: I am swimming!"
  end
end

class Air_animal < Land_animal
  def fly
    puts "#{name}: I believe I can fly !"
  end
end

class Land_animal < Animal
  def walk
    "#{name}: I walk."
  end
end

class Duck < Air_animal
  def sound
    'quak'
  end
end

class Fish < Water_animal
  def sound
    'blub'
  end
end

class Cat < Land_animal

  def sound
    'meow'
  end

  def sneak
    puts "#{name}: I sneak."
  end
end

class Dog < Land_animal
  def sound
    'woof'
  end
end

cat = Cat.new('Lucky')
dog = Dog.new('Laika')

duck = Duck.new('Dagobert')
duck.fly

fish = Fish.new('nemo')
fish.swim

cat.walk   # Lucky: I walk.
cat.talk   # Lucky: meow, meow.
cat.sneak  # Lucky: I sneak.
dog.walk   # Laika: I walk.
dog.talk   # Laika: woof, woof.
# dog.sneak  # => NoMethodError: undefined method `sneak' for #<Dog:...>

