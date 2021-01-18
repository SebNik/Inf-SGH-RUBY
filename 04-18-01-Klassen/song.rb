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


# Klassendefinition an dieser Stelle ergaenzen

#song = Song.new
#song.show_infos  # Song: unknown (unknown)
#
#song.title  = "Revolution"
#song.artist = "The Beatles"
#song.show_infos  # Song: Revolution (The Beatles)