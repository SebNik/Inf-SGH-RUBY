# numberlist_sort_test.rb: Unit tests for the NumberList class.
#
# Copyright (C) 2012-2021 Marcus Stollsteimer

require "minitest/autorun"

require_relative "numberlist"

describe NumberList do

  before do
    @testdata     = [4, 1, 8, 4, 3, 4, 6, 4]
    @testdata_str = "4 1 8 4 3 4 6 4"
    @list = NumberList.new(@testdata)
  end

  it "can return a sorted NumberList object with #selection_sort" do
    _(@list.selection_sort.class).must_equal NumberList
    _(@list.selection_sort.to_a).must_equal @testdata.sort
  end

  it "is not modified by the method #selection_sort" do
    before = @list.to_a.dup
    @list.selection_sort
    _(@list.to_a).must_equal before
  end

  it "can return a sorted NumberList object with #bubble_sort" do
    _(@list.bubble_sort.class).must_equal NumberList
    _(@list.bubble_sort.to_a).must_equal @testdata.sort
  end

  it "is not modified by the method #bubble_sort" do
    before = @list.to_a.dup
    @list.bubble_sort
    _(@list.to_a).must_equal before
  end

  it "can return a sorted NumberList object with #quick_sort" do
    _(@list.quick_sort.class).must_equal NumberList
    _(@list.quick_sort.to_a).must_equal @testdata.sort
  end

  it "is not modified by the method #quick_sort" do
    before = @list.to_a.dup
    @list.quick_sort
    _(@list.to_a).must_equal before
  end
end
