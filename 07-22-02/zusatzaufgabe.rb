# zusatzaufgabe.rb: This class will manipulate array in diffrent ways.
#
# Copyright (C) 2021 Niklas Abraham

class Manipulate

    attr_accessor :string_orginal

    def initialize(string="I can’t give you a sure-fire formula for success but I can give you a formula for failure try to please everybody all the time")
        @string_orginal = string
    end

    def count_words
        @string_orginal.split.size
    end

    def count_different_words
        diff_words = []
        for word in @string_orginal.split do
            if !(diff_words.include? word)
                diff_words << word
            end
        end
        diff_words.size
    end

    def get_backwards
        @string_orginal.split.reverse().join(" ")
    end

    def get_alphabetically
        @string_orginal.downcase.split.sort.join(" ")
    end

    def get_shuffled
        @string_orginal.split.shuffle.join(" ")
    end

end

array_class = Manipulate.new()

puts array_class.count_words 
puts array_class.count_different_words 
puts array_class.get_backwards
puts array_class.get_alphabetically 
puts array_class.get_shuffled 

