class Person
    def initialize
        puts "I'm a new Person!"
    end
    def greet
        puts "Hello, world!"
    end
end


albert = Person.new
albert.greet         # Hello, world!
