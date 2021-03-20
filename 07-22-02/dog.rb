# dob.rb: This is the class of the dog.
#
# Copyright (C) 2021 Niklas Abraham

class Dog

  attr_reader :name
  attr_accessor :size

  def initialize(n, s)
    @name = n
    @size = s
  end

  def bark(count = 2)
    msg_first = ""
    msg = ""
    if @size < 10
      msg = "yip"
      msg_first = "Yip"
    elsif 10 <= @size && @size <= 20
      msg = "arf"
      msg_first = "Arf"
    elsif @size > 20
      msg = "woof"
      msg_first = "Woof"
    end
    times = (count - 1)
    if times < 0
      times = 0
    end
    puts "#{@name}: #{msg_first}" + ", #{msg}" * times + "!"
  end

  def info
    "name: #{@name}; size: #{@size}"
  end

  def grow_by(delta)
    @size += delta
  end

end

# rex = Dog.new("Rex", 20)
# (kleiner als 10: „yip“; von 10 bis 20: „arf“; größer als 20: „woof“).
# puts rex.info
# rex.bark(4)
# rex.bark
# rex.grow_by(10)
# puts rex.info