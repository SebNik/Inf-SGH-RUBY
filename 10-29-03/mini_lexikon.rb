# mini_lexikon.rb: This is a lexicon which can access countries.
#
# Copyright (C) 2021 Niklas Abraham
require 'csv'
require_relative 'Country'


class Lexicon
  def run
    filename = 'laender.csv'
    lexicon = {}
    CSV.foreach(filename, headers: true) do |row|
      c = Country.new(row['Code'])
      c.set_capital(row['Hauptstadt'])
      c.set_name(row['Name'])
      lexicon[row[1]] = c
    end
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
end

l = Lexicon.new
l.run
