USAGE = "Usage: pnm_niklas.rb file"
abort USAGE  unless ARGV.size == 1

require_relative "pnm_converter"

converter = PNMConverter.new

infile = ARGV.shift
name = File.basename(infile, ".*")
outfile = "images/#{name}-invert"

image = PNM.read(infile)
new_image = converter.invert(image)
new_image.write(outfile, add_extension: true)

# ruby pnm_niklas.rb images/dog.pbm