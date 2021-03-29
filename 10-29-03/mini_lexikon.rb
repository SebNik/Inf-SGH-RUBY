# mini_lexikon.rb: This is a lexicon which can access countries.
#
# Copyright (C) 2021 Niklas Abraham
require 'csv'
require_relative 'Country'

class Lexicon
  def initialize(file)
    @file = file
  end

  def create_data
    lexicon = {}
    CSV.foreach(@file, headers: true) do |row|
      c = Country.new(row['Code'])
      c.capital_set(row['Hauptstadt'])
      c.name_set(row['Name'])
      lexicon[row[1]] = c
    end
    lexicon
  end

  def check_input(lexicon)
    loop do
      input = gets.chomp
      if input == 'quit'
        break
      elsif lexicon.keys.include? input
        puts lexicon[input].capital
      else
        puts 'unbekanntes Land'
      end
    end
  end

  def run
    lexicon = create_data
    check_input(lexicon)
  end
end

lexi = Lexicon.new('laender.csv')
lexi.run
