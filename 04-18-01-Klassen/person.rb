class Person
    attr_accessor :slogan

    def initialize
        @slogan = "Hello"
    end

    def greet
        puts "#{@slogan}, world!"
    end
end


albert = Person.new
albert.greet         # Hello, world!
