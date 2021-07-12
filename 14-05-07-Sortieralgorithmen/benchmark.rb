require_relative "numberlist"
require "benchmark"
require "csv"

n = 100

numbers = Array.new(n) { rand(n) }
list = NumberList.new(numbers)
puts "list size: #{list.to_a.size}"
puts 

Benchmark.bm(15) do |bm|
    bm.report("sort (system)") { list.sort }
    bm.report("selection_sort") { list.selection_sort }
    bm.report("insertion_sort") { list.insertion_sort }
    bm.report("bubble_sort") { list.bubble_sort }
    bm.report("quick_sort") { list.quick_sort }

end

CSV.open('data.csv', 'w') do |csv_object|
    customers.array.each do |row_array|
      csv_object << row_array
    end
end