array = [*1..10]

new_array = []

0.upto(array.length-1) do |i|
    new_array << array[i] + 5
end

puts new_array