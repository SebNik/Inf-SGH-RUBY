# the code is creating the text in ceaser chifere with x
abc = "abcdefghijklmnopqrstuvwxyz"
print "Text: "
text = gets.chomp
print "Schlüssel: "
key = gets.chomp
x = abc.index(key.downcase)
chiffre = abc[x..-1] + abc[0, x]

text = text.tr(abc.downcase+abc.upcase, chiffre.downcase+chiffre.upcase)
print "verschlüsselt: "
puts text

text = text.tr(chiffre.downcase+chiffre.upcase, abc.downcase+abc.upcase)
print "entschlüsselt: "
puts text
