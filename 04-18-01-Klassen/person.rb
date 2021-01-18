class Person
    attr_accessor :slogan

    def initialize
        @slogan = "Hello"
    end

    def greet
        puts "#{@slogan}, world!"
    end
end

john_doe = Person.new
john_doe.greet         # Hello, world!
puts john_doe.slogan   # Hello

arnold = Person.new
arnold.slogan = "Hasta la vista"

spock = Person.new
spock.slogan = "Live long and prosper"

arnold.greet        # Hasta la vista, world!
spock.greet         # Live long and prosper, world