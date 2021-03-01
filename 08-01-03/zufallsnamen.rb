# zufallsnamen.rb: This class will create random names.
#
# Copyright (C) 2021 Niklas Abraham

class NameGenerator

    attr_reader :first_names
    attr_reader :last_names

    def initialize(f, l)
        @first_names = f
        @last_names = l
    end

    def random
        # this function will return an random name
        @first_names.sample+" "+@last_names.sample
    end

    def show_all
        # this function gives out all the combinations for the names
        @first_names.each do |first|
            @last_names.each do |last|
                puts "#{first} #{last}"
            end
        end
    end

end

first_names = ["Big", "Little", "Flying", "Sitting"]
last_names  = ["Bull", "Eagle", "Fox", "Horse"]
names = NameGenerator.new(first_names, last_names)

puts names.random  # => "Sitting Eagle" (eine zufällige Kombination)
names.show_all