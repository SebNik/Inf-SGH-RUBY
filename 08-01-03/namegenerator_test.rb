# namegenerator_test.rb: Unit tests for the NameGenerator class.
#
# Copyright (C) 2020-2021 Marcus Stollsteimer

require "minitest/autorun"
require "minitest/mock"

require_relative "namegenerator"

describe NameGenerator do

  it "can return a name" do
    generator = NameGenerator.new(["John"], ["Doe"])
    _(generator.random).must_equal "John Doe"
  end

  it "can return all possible random names" do
    generator = NameGenerator.new(%w[Big Little], %w[Bull Horse])
    names = Array.new(1000) { generator.random }

    expected = ["Big Bull", "Big Horse", "Little Bull", "Little Horse"]
    _(names.sort.uniq).must_equal expected
  end

  it "does return random names with about equal frequencies" do
    generator = NameGenerator.new(%w[Mad Sly], %w[Dog Fox])
    names = Array.new(100_000) { generator.random }

    _(names.count("Mad Dog").to_f / names.size).must_be_close_to 0.25, 0.01
    _(names.count("Mad Fox").to_f / names.size).must_be_close_to 0.25, 0.01
    _(names.count("Sly Dog").to_f / names.size).must_be_close_to 0.25, 0.01
    _(names.count("Sly Fox").to_f / names.size).must_be_close_to 0.25, 0.01
  end

  it "can show all possible names" do
    generator = NameGenerator.new(%w[John Jane], %w[Doe Roe])
    out, _err = capture_io do
      generator.show_all
    end

    expected = "Jane Doe\nJane Roe\nJohn Doe\nJohn Roe"
    _(out.split("\n").sort.join("\n")).must_equal expected
  end

  it "can return all possible names" do
    generator = NameGenerator.new(%w[John Jane], %w[Doe Roe])

    expected = ["Jane Doe", "Jane Roe", "John Doe", "John Roe"]
    _(generator.all.sort).must_equal expected
  end

  it "#show_all should call the method #all" do
    mock = Minitest::Mock.new
    mock.expect(:call, nil)

    generator = NameGenerator.new(["John"], ["Doe"])
    generator.stub(:all, mock) do
      capture_io { generator.show_all }
    end

    mock.verify
  end
end
