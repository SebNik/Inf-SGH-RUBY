# numberlist_basic_test.rb: Unit tests for the NumberList class.
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

  it "can be created without an argument" do
    list = NumberList.new
    _(list.to_a).must_equal []
  end

  it "has only the data instance variable" do
    _(@list.instance_variables).must_equal [:@data]
  end

  it "does not give read access to its instance variables" do
    @list.instance_variables.each do |var|
      reader = "#{var}".gsub(/\A@/, "").to_sym
      _ { @list.send reader }.must_raise NoMethodError
    end
  end

  it "does not give write access to its instance variables" do
    @list.instance_variables.each do |var|
      writer = "#{var}=".gsub(/\A@/, "").to_sym
      _ { @list.send writer, [] }.must_raise NoMethodError
    end
  end

  it "can return its data as array" do
    _(@list.to_a).must_equal @testdata
  end

  it "can be populated with random numbers, discarding existing data" do
    list = NumberList.new([-1, -1, -1, -1, -1, -1, -1, -1, -1, -1])
    list.populate(5)
    _(list.to_a.size).must_equal 5
    _(list.to_a).wont_include(-1)
  end

  it "can return the list as string" do
    _(@list.to_s).must_equal @testdata_str
  end

  it "can return a sorted NumberList object" do
    _(@list.sort.class).must_equal NumberList
    _(@list.sort.to_a).must_equal @testdata.sort
  end

  it "is not modified by the method #sort" do
    before = @list.to_a.dup
    @list.sort
    _(@list.to_a).must_equal before
  end
end
