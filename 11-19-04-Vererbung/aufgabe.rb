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

  # def sound
  #   "???"
  # end
end

class Cat < Animal

  def sound
    "meow"
  end

  def sneak
    puts "#{name}: I sneak."
  end
end

class Dog < Animal

  def sound
    "woof"
  end
end

class Duck < Animal
  def fly
    puts "I believe I can fly !"
  end
end

cat = Cat.new("Lucky")
dog = Dog.new("Laika")

duck = Duck.new("Dagobert")
duck

cat.walk   # Lucky: I walk.
cat.talk   # Lucky: meow, meow.
cat.sneak  # Lucky: I sneak.
dog.walk   # Laika: I walk.
dog.talk   # Laika: woof, woof.
# dog.sneak  # => NoMethodError: undefined method `sneak' for #<Dog:...>

