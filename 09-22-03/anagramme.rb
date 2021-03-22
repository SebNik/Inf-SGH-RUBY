# frozen_string_literal: true
filename = 'wortliste.txt'
words = File.readlines(filename, chomp: true)

anagrams_hash = {}

words.each do |word|
  signature = word.downcase.chars.sort.join
  if anagrams_hash[signature]
    anagrams_hash[signature] << word
  else
    anagrams_hash[signature] = [word]
  end
end

anagrams_hash.each do |key, value|
  puts "Signature: #{key}, anagrams: #{value}" if value.size >= 2
end

max_key = ''
max_anagrams = 0
anagrams_hash.each do |key, value|
  if value.size > max_anagrams
    max_anagrams = value.size
    max_key = key
  end
end
puts "longest anagram: #{max_key} is #{anagrams_hash[max_key]}"
