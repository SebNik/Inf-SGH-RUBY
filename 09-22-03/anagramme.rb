filename = "wortliste.txt"
woerter = File.readlines(filename, chomp: true)

anagaramme_hash = {}

woerter.each do |word|
    signature = word.downcase.chars.sort.join
    if (anagaramme_hash[signature])
        anagaramme_hash[signature] << word
    else
        anagaramme_hash[signature] = [word]
    end
end

anagaramme_hash.each do |key, value|
    if (value.size >= 2)
        puts "Signature: #{key}, anagrams: #{value}"
    end
end

max_key = ""
max_anagrams = 0
anagaramme_hash.each do |key, value|
    if (value.size > max_anagrams)
        max_anagrams=value.size
        max_key=key
    end
end
puts "longest anagram: #{max_key} is #{anagaramme_hash[max_key]}"