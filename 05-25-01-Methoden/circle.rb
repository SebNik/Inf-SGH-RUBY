class Circle

    def initialize(r_set)
        @radius = r_set
    end

    # Returns the circular area.
    def area
        Math::PI * @radius**2
    end

    # Return radius
    def radius
        @radius
    end

    # Set the radius
    def radius=(r)
        @radius = r
    end
    
end
# attr_reader, attr_writer, attr_accessor
#circle = Circle.new(10)
#puts circle.area  # 78.53981633974483