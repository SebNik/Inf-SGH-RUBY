# Warming_Up.rb: Aufgabe von Warming Up
#
# Copyright (C) 2021 Niklas Abraham

# Schreibe das Einstiegsbeispiel mithilfe eines each-Iterators um.
# Verwende each, um zum Array vegetables von oben ein neues Array sizes zu erzeugen, das die jeweiligen Längen der Elemente enthält.

vegetables = %w[potato cucumber tomato bean]
length = []

vegetables.each do |element|
  puts element
  length << element.size
end
puts length