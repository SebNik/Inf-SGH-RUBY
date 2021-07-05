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

  # def selection_sort
  # end

  # def insertion_sort
  # end

  # def bubble_sort
  # end

  # def quick_sort
  # end
end
