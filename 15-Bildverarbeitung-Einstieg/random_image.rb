require "pnm"

height = 100
width = 100

new_data = []

0.upto(height-1) do |i|
    new_row = []
    0.upto(width-1) do |j|

        test_pixel = rand(255)
        if test_pixel > 255
            new_row << 255
        else
            new_row << test_pixel
        end
    end
    new_data << new_row
end

new_image = PNM.create(new_data, maxgray: 255, comment: "Test Random Images")

new_image.write("images/random_image.pgm")