# zufallsnamen.rb: This class will create random names.
#
# Copyright (C) 2021 Niklas Abraham

class NameGenerator
    # Code für `initialize' und `random' hier ergänzen;
    # nützlich für die Methode `random': Array#sample
end

first_names = ["Big", "Little", "Flying", "Sitting"]
last_names  = ["Bull", "Eagle", "Fox", "Horse"]
names = NameGenerator.new(first_names, last_names)

puts names.random  # => "Sitting Eagle" (eine zufällige Kombination)