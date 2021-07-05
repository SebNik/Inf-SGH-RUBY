# A class for a list of numbers.
class NumberList

  def initialize(list = [])
    @data = list
  end

  def populate(size)
    @data = []
    size.times do
      @data << rand(100)
    end
  end

  def to_s
    @data.join(" ")
  end

  def to_a
    @data.dup
  end

  def sort
    NumberList.new(@data.sort)
  end

  def selection_sort
    sorted = []
    unsorted = @data.dup

    while unsorted.size > 0
      smallest = unsorted[0]
      smalles_index = 0

      1.upto(unsorted.size - 1) do |index|
        if smallest > unsorted[index]
          smallest = unsorted[index]
          smalles_index = index
        end
      end

      sorted << smallest
      unsorted.delete_at(smalles_index)

    end
    sorted
  end

  def insertion_sort
    sorted = []
    unsorted = @data.dup

    while unsorted.size > 0
      element = unsorted[0]
      unsorted.delete_at(0)
      
      0.upto(sorted.size) do |index|
        if sorted[index] == nil
          sorted << element
          break
        elsif index == sorted.size
          sorted.insert(index-1, element)
          break
        elsif sorted[index] > element
          sorted.insert(index, element)
          break
        end
      end

    end
    sorted
  end

  def bubble_sort
    array = @data.dup

    count_switches = 1
    while count_switches != 0
      count_switches = 0
      0.upto(array.size - 2) do |index|
        if array[index] > array[index+1]
          array[index], array[index+1] = array[index+1], array[index]
          count_switches += 1
        end
      end
    end
    array
  end

  # def quick_sort
  # end
end


test = NumberList.new()
test.populate(20)

puts "Unsorted orginal:   " + test.to_s
puts "Selections sort:    " + test.selection_sort.join(" ")
puts "Snsertion sort:     " + test.insertion_sort.join(" ")
puts "Bubble sort:        " + test.bubble_sort.join(" ")
