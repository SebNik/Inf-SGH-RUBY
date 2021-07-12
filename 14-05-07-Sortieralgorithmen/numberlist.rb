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
    NumberList.new(sorted)
  end

  def insertion_sort
    sorted = []
    unsorted = @data.dup

    while unsorted.size > 0
      element = unsorted.pop()
      # element = unsorted[0]
      # unsorted.delete_at(0)
      
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
    NumberList.new(sorted)
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
    NumberList.new(array)
  end

  def quick_sort
    array = @data.dup
    # puts "Array: " + array.join(" ")

    # pick random element and index
    random_index_pivot = rand(array.size - 1)
    pivot = array[random_index_pivot]
    # puts "pivot: " + pivot.to_s

    # splitting into to lists
    array_greater = array.select { |n| n > pivot }
    array_smaller = array.select { |n| n < pivot }
    array_equal = array.select { |n| n == pivot }

    # building the new array with new quick sort if not size 0 or 1
    if array_greater.size > 1
      gerater = NumberList.new(array_greater)
      array_greater = gerater.quick_sort.to_a
    end

    if array_smaller.size > 1
      smaller = NumberList.new(array_smaller)
      array_smaller = smaller.quick_sort.to_a
    end

    NumberList.new(array_smaller + [] + array_equal + array_greater)
  end
end


# test = NumberList.new()
# test.populate(20)

# puts "Unsorted orginal:   " + test.to_s
# puts "Selections sort:    " + test.selection_sort.to_s
# puts "Snsertion sort:     " + test.insertion_sort.to_s
# puts "Bubble sort:        " + test.bubble_sort.to_s
# puts "Quick sort:         " + test.quick_sort.to_s

