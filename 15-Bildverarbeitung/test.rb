require "pnm"

image = PNM.read("ziege.pgm")

puts image.type
puts image.width
puts image.height
puts image.maxgray