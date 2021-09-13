require "pnm"

image = PNM.read("ziege.pgm")

data_original = image.pixels
puts data_original.class

new_data = []

0.upto(data_original.length-1) do |i|
    new_row = []
    0.upto(data_original.length-1) do |j|

        test_pixel = data_original[i][j] + 80
        if test_pixel > 255
            new_row << 255
        else
            new_row << test_pixel
        end
    end
    new_data << new_row
end

new_image = PNM.create(new_data, maxgray: 255, comment: "Test")

new_image.write("ziege_cahnged_1.pgm")