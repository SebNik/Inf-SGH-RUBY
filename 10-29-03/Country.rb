# country.rb: This class sort all the data of the countries.
#
# Copyright (C) 2021 Niklas Abraham

class Country
  attr_accessor :code, :name, :capital

  def initialize(code)
    @code = code
  end

  def name_set(name)
    @name = name
  end

  def capital_set(capital)
    @capital = capital
  end
end