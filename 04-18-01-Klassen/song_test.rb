# song_test.rb: Unit tests for the Song class.
#
# Copyright (C) 2019-2021 Marcus Stollsteimer

require "minitest/autorun"

require_relative "song"

describe Song do

  before do
    @song = Song.new
  end

  it "has a @title instance variable" do
    vars = @song.instance_variables
    _(vars).must_include :@title
  end

  it "has an @artist instance variable" do
    vars = @song.instance_variables
    _(vars).must_include :@artist
  end

  it "can return its default title `unknown'" do
    _(@song.title).must_equal "unknown"
  end

  it "can return its default artist `unknown'" do
    _(@song.artist).must_equal "unknown"
  end

  it "can set its title" do
    @song.title = "With a Little Help from My Friends"
    _(@song.title).must_equal "With a Little Help from My Friends"
  end

  it "can set its artist" do
    @song.artist = "Eric Clapton"
    _(@song.artist).must_equal "Eric Clapton"
  end

  it "can show the song infos with #show_infos" do
    @song.title = "Penny Lane"
    @song.artist = "The Beatles"
    _ { @song.show_infos }.must_output "Song: Penny Lane (The Beatles)\n"
  end
end
