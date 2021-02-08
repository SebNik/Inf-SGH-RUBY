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

    def bark(count=2)
        times = (count - 1)
        if times<0
            times=0
        end
        puts "#{@name}: Woof" + ", woof" * times + "!"
    end

    def info
        "name: #{@name}; size: #{@size}"
    end

    def grow_by(delta)
        @size += delta
    end

end

# rex = Dog.new("Rex", 20)

# puts rex.info
# rex.bark(4)
# rex.bark
# rex.grow_by(10)
# puts rex.info