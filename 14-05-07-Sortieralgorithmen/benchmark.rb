require_relative "numberlist"
require "benchmark"
require "csv"

data= []

1.upto(25000) do |n|
    if n % 500 == 0
        numbers = Array.new(n) { rand(n) }
        list = NumberList.new(numbers)
        puts 
        puts "list size: #{list.to_a.size}"
        row = []

        Benchmark.bm(15) do |bm|
            row << bm.report("sort (system)") { list.sort }
            row << bm.report("selection_sort") { list.selection_sort }
            row << bm.report("insertion_sort") { list.insertion_sort }
            row << bm.report("bubble_sort") { list.bubble_sort }
            row << bm.report("quick_sort") { list.quick_sort }
        end
        data << row  
    end
end



# ---------------------------------------
CSV.open('data.csv', 'w', { :col_sep => ';' }) do |csv_object|
    data.each do |row_array|
      csv_object << row_array
    end
end