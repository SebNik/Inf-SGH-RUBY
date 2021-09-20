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

end

