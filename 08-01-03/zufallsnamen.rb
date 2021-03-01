# zufallsnamen.rb: This class will create random names.
#
# Copyright (C) 2021 Niklas Abraham

class NameGenerator

    attr_reader :first_names
    attr_reader :last_names

    def initialize(f=nil, l=nil)
        if f==nil && l==nil
            @first_names = File.readlines("vornamen.txt", chomp: true)
            @last_names = File.readlines("nachnamen.txt", chomp: true)
        else
            @first_names = f
            @last_names = l
        end
    end

    def random
        # this function will return an random name
        @first_names.sample+" "+@last_names.sample
    end


    def all
        # this function returns out all the combinations for the names
        combinations = []
        @first_names.each do |first|
            @last_names.each do |last|
                combinations << "#{first} #{last}"
            end
        end
        combinations
    end


    def show_all
        # this function gives out all the combinations for the names
        puts self.all()
    end

end

#first_names = ["Big", "Little", "Flying", "Sitting"]
#last_names  = ["Bull", "Eagle", "Fox", "Horse"]
#names = NameGenerator.new(first_names, last_names)

# names = NameGenerator.new()

# puts names.random  # => "Sitting Eagle" (eine zufällige Kombination)
# names.show_all
