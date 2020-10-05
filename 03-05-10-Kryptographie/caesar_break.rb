# the code is creating the text in ceaser chifere with x
abc = "abcdefghijklmnopqrstuvwxyz"
print "Text: "
text = "Sgf sqymotf, pme imd paot smd zuotf ea eotiqd."
puts text

26.times do |i|
  chiffre = abc[i..-1] + abc[0, i]
  code = text.tr(abc.downcase+abc.upcase, chiffre.downcase+chiffre.upcase)
  print "Schlüssel: #{i} Schlüsselbuchstabe: #{abc[i]} Text: #{code}"
end

chiffre = abc[x..-1] + abc[0, x]

text = text.tr(abc.downcase+abc.upcase, chiffre.downcase+chiffre.upcase)
print "verschlüsselt: "
puts text

text = text.tr(chiffre.downcase+chiffre.upcase, abc.downcase+abc.upcase)
print "entschlüsselt: "
puts text
