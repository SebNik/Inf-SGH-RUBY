# song.rb: Class song.
#
# Copyright (C) 2021 Niklas Abraham

class Song

    attr_accessor :title
    attr_accessor :artist

    def initialize
        @title = "unknown"
        @artist = "unknown"
    end

    def show_infos
        puts "Song: #{@title} (#{@artist})"
    end
end