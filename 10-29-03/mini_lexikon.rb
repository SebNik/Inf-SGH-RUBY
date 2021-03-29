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
      # Code,Name,Name (Langform),Hauptstadt,ALPHA-3,TLD,Waehrung,Waehrungscode
      arr = row # .split(',')
      c = Country.new(arr[0])
      c.set_capital(arr[3])
      c.set_name(arr[1])
      lexicon[arr[1]] = c
    end
    # puts lexicon['Peru'].capital
    # puts lexicon['Haiti'].capital
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