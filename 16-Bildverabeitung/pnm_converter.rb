require "pnm"


class PNMConverter

    # Returns a copy of the image.
    def copy(image)
        type    = image.type
        maxgray = image.maxgray
        pixels  = image.pixels

        PNM.create(pixels, type: type, maxgray: maxgray)
    end

    def vflip(image)
        type    = image.type
        maxgray = image.maxgray
        pixels  = image.pixels

        new_flipped_pixels = []

        1.upto(pixels.length) do |i|
            new_flipped_pixels << pixels[pixels.length-i]
        end

        PNM.create(new_flipped_pixels, type: type, maxgray: maxgray)
    end

    def hflip(image)
        type    = image.type
        maxgray = image.maxgray
        pixels  = image.pixels

        new_flipped_pixels = []

        0.upto(pixels.length-1) do |j|
            new_row = []
            1.upto(pixels[j].length) do |i|
                new_row << pixels[j][pixels[j].length-i]
            end

            new_flipped_pixels << new_row
        end

        PNM.create(new_flipped_pixels, type: type, maxgray: maxgray)
    end

    def invert(image)
        type    = image.type
        maxgray = image.maxgray
        pixels  = image.pixels

        new_images = []

        0.upto(pixels.length-1) do |j|
            new_row = []
            0.upto(pixels[j].length-1) do |i|
                new_row << image.maxgray - pixels[j][i]
            end
            new_images << new_row
        end

        PNM.create(new_images, type: type, maxgray: maxgray)
    end

    def rotate(image)
        type    = image.type
        maxgray = image.maxgray
        pixels  = image.pixels

        new_images = []

        0.upto(image.width - 1) do |i|
            new_row = []
            1.upto(pixels.length - 1) do |j|
                new_row << pixels[pixels.length - j][i]
            end
            new_images << new_row
        end

        PNM.create(new_images, type: type, maxgray: maxgray)
    end

end

