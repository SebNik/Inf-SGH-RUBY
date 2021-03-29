# mini_lexikon.rb: This is a lexicon which can access countries.
#
# Copyright (C) 2021 Niklas Abraham
require_relative 'Country'

filename = 'laender.csv'
data = File.readlines(filename, chomp: true)
# Code,Name,Name (Langform),Hauptstadt,ALPHA-3,TLD,Waehrung,Waehrungscode

lexicon = {}

data.each do |row|
  arr = row.split(',')
  c = Country.new(arr[0])
  c.set_capital(arr[3])
  c.set_name(arr[1])
  lexicon[arr[1]] = c
end

puts lexicon["Peru"].capital
puts lexicon["Haiti"].capital

loop do
  input = gets.chomp
  if (input == "quit")
    break
  else
    if (lexicon.keys.include? input)
      puts lexicon[input].capital
    else
      puts 'unbekanntes Land'
    end
  end
end