# circle_test.rb: Unit tests for the Circle class.
#
# Copyright (C) 2014-2021 Marcus Stollsteimer

require "minitest/autorun"

require_relative "circle"

describe Circle do

  before do
    @circle = Circle.new(5)
  end

  it "can return its radius" do
    _(@circle.radius).must_equal 5
  end

  it "can set its radius" do
    @circle.radius = 10
    _(@circle.radius).must_equal 10
  end

  it "can return its area" do
    _(@circle.area).must_be_close_to 78.5398, 0.0001
  end

  it "can set its area" do
    skip
    @circle.area = 42
    _(@circle.area).must_be_close_to 42
    _(@circle.radius).must_be_close_to 3.6564, 0.0001
  end
end
