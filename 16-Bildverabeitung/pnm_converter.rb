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
        puts pixels

        new_images = []

        0.upto(pixels.length-1) do |j|
            new_row = []
            0.upto(pixels[j].length-1) do |i|
                new_row << maxgray - pixels[j][i]
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
            1.upto(pixels.length) do |j|
                new_row << pixels[pixels.length - j][i]
            end
            new_images << new_row
        end

        PNM.create(new_images, type: type, maxgray: maxgray)
    end

    def histogram(image)
        # this file is outputting and histogram for data analysis
        type    = image.type
        maxgray = image.maxgray
        pixels  = image.pixels

        new_images = []
        data = {}

        0.upto(maxgray+1) do |z|
            data[z] = 0
        end

        0.upto(image.width - 1) do |col|
            0.upto(image.height-1) do |row|
                data[pixels[row][col]] += 1
            end
        end

        max_v = data.values.max

        0.upto(data.length-1) do |l|
            new_images << ([0] * (data[l]*100/max_v) + [255] * (100-(data[l]*100/max_v)))
        end

        0.upto(new_images.length-1) do |row|
            0.upto(10) do |t|
                new_images[row].insert(0, (row*255/(new_images.length-1)).round)
            end
        end

        rotate(rotate(rotate(PNM.create(new_images, type: type, maxgray: maxgray))))

    end

    def uncover(image)
        # this file is outputting and histogram for data analysis
        type    = image.type
        maxgray = image.maxgray
        pixels  = image.pixels

        new_images = []

        0.upto(pixels.length-1) do |i|
            new_row = []
            0.upto(pixels[0].length-1) do |j|
                if pixels[i][j].odd?
                    new_row << 1
                else
                    new_row << 0
                end
            end
            new_images << new_row
        end
        PNM.create(new_images)
    end

    def hide(cover, message)
        # this file is outputting and histogram for data analysis
        c_type    = cover.type
        c_maxgray = cover.maxgray
        c_pixels  = cover.pixels

        m_type    = message.type
        m_maxgray = message.maxgray
        m_pixels  = message.pixels

        new_images = []
        

        
        PNM.create(new_images, type: c_type, maxgray: c_maxgray)

    end
end

