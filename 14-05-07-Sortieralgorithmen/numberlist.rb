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

    while @data.size > 0
      smallest = @data[0]
      smalles_index = 0

      1.upto(@data.size - 1) do |index|
        
      end
    end
  end

  # def insertion_sort
  # end

  # def bubble_sort
  # end

  # def quick_sort
  # end
end


test = NumberList.new()
test.populate(20)

puts test.to_s
puts test.selection_sort.join(" ")