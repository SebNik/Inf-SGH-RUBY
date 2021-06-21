array_start = [*1..10]
# puts array_start[0]

new_array = []
1.upto(array_start.length) do |i|
    index = rand(array_start.length)
    new_array << array_start[index]
    array_start.delete_at(index)
end
p new_array