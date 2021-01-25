# dog_test.rb: Unit tests for the Dog class.
#
# Copyright (C) 2012-2021 Marcus Stollsteimer

require "minitest/autorun"

require_relative "dog"

describe Dog do

  before do
    @rex = Dog.new("Rex", 30)
  end

  it "can return its name" do
    _(@rex.name).must_equal "Rex"
  end

  it "can not be renamed" do
    _ { @rex.name = "Fips" }.must_raise NoMethodError
  end

  it "has a size that can be changed" do
    @rex.size = 10
    _(@rex.size).must_equal 10
  end

  it "can return information about itself" do
    _(@rex.info).must_equal "name: Rex; size: 30"
  end

  it "can bark (no argument)" do
    _ { @rex.bark }.must_output "Rex: Woof, woof!\n"
  end

  it "can bark five times" do
    expected = "Rex: Woof, woof, woof, woof, woof!\n"
    _ { @rex.bark(5) }.must_output expected
  end

  it "can grow by a certain amount" do
    @rex.grow_by(15)
    _(@rex.size).must_equal 45
  end
end
