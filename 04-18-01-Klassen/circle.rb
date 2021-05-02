class Circle

    def initialize
        @radius = 5
    end

    # Returns the circular area.
    def area
        Math::PI * @radius**2
    end


    def test
        @radius = 10
    end
end
# attr_reader, attr_writer, attr_accessor
circle = Circle.new
puts circle.area  # 78.53981633974483
puts circle.test
puts circle.area  # 78.53981633974483
