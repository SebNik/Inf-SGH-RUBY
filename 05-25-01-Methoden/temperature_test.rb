# temperature_test.rb: Unit tests for the Temperature class.
#
# Copyright (C) 2012-2021 Marcus Stollsteimer

require "minitest/autorun"

require_relative "temperature"

describe Temperature do

  it "can be created with a given Celsius temperature" do
    Temperature.new(0)
  end

  it "has a default value of 0 degree Celsius" do
    _(Temperature.new.celsius).must_equal 0
  end

  it "can return the temperature as degree Celsius" do
    _(Temperature.new(0).celsius).must_equal 0
  end

  it "can return the temperature as degree Fahrenheit" do
    _(Temperature.new(0).fahrenheit).must_equal 32
  end

  it "sets fahrenheit correctly when changing celsius" do
    temp = Temperature.new(0)
    temp.celsius = 20
    _(temp.celsius).must_equal 20
    _(temp.fahrenheit).must_equal 68
  end

  it "sets celsius correctly when changing fahrenheit" do
    temp = Temperature.new(0)
    temp.fahrenheit = 5
    _(temp.fahrenheit).must_be_close_to 5
    _(temp.celsius).must_be_close_to(-15)
  end

  it "calculates temperatures correctly" do
    celsius_fahrenheit = [
      [0, 32],
      [-17.7778, 0],
      [10, 50],
      [37.7778, 100],
      [42, 107.6],
      [100, 212]
    ]

    celsius_fahrenheit.each do |temp_c, temp_f|
      celsius_temp = Temperature.new(temp_c)
      _(celsius_temp.fahrenheit).must_be_close_to temp_f

      fahrenheit_temp = Temperature.new
      fahrenheit_temp.fahrenheit = temp_f
      _(fahrenheit_temp.celsius).must_be_close_to temp_c
    end
  end
end
