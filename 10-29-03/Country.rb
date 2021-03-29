# country.rb: This class sort all the data of the countries.
#
# Copyright (C) 2021 Niklas Abraham

class Country
  attr_accessor :code
  attr_accessor :name
  attr_accessor :capital

  def initialize(code)
    @code = code
  end

  def set_name(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_capital(capital)
    @capital = capital
  end

  def get_capital
    @capital
  end
end