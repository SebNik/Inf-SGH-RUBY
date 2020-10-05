# the code is creating th etext in rot 13 ceaser chifere with 13
abc = "abcdefghijklmnopqrstuvwxyz"
key = abc[13,13] + abc[0, 13]
puts key
text = "Hallo liebe Welt !"
text = text.downcase.tr(abc, key)
puts text
