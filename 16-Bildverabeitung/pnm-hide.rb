USAGE = "Usage: pnm-hide.rb file"
abort USAGE  unless ARGV.size == 2

require_relative "pnm_converter"

converter = PNMConverter.new

cover_file = ARGV.shift
image_cover = PNM.read(cover_file)

message = ARGV.shift
image_message = PNM.read(message)

outfile = "images/cover-stego"

new_image = converter.hide(image_cover, image_message)
new_image.write(outfile, add_extension: true)

# ruby pnm-hide.rb images/kitten.ppm images/stegano-kitten-message.pbm