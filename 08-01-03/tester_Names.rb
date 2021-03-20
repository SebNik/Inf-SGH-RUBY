require_relative "zufallsnamen"

first = ["Indiana", "Luke", "Harry"]
last = ["Jones", "Skywalker", "Potter"]
names = NameGenerator.new(first, last)

names.show_all

# Ausgabe zum Beispiel:
# Indiana Jones
# Indiana Skywalker
# Indiana Potter
# Luke Jones
# ...