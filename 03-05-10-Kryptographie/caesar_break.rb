# the code is creating the text in ceaser chifere with x
abc = "abcdefghijklmnopqrstuvwxyz"
print "Text: "
text = "Sgf sqymotf, pme imd paot smd zuotf ea eotiqd."
puts text

26.times do |i|
  chiffre = abc[i..-1] + abc[0, i]
  code = text.tr(abc.downcase+abc.upcase, chiffre.downcase+chiffre.upcase)
  puts " VERSCHLÜSSLUNG  -  Schlüssel: #{i} Schlüsselbuchstabe: #{abc[i]} Text: #{code}"
end

26.times do |i|
  chiffre = abc[i..-1] + abc[0, i]
  code = text.tr(chiffre.downcase+chiffre.upcase, abc.downcase+abc.upcase)
  puts " ENTSCHLÜSSLUNG  -  Schlüssel: #{i} Schlüsselbuchstabe: #{abc[i]} Text: #{code}"
end
