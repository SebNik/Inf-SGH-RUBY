# simple var
mein_text = "Hallo Welt!"
puts mein_text, mein_text

# var print with names
name = "Niklas Sebastian Abraham"
puts "Mein Name ist: " + name

# vars zeigen auf einen wert
# sie enthalten refernzen auf objekte
var1 = "hallo"
var2 = var1
# hier zeigen sie beide auf das selbe objekte
puts var1, var2

# jedoch sind die als behälter zu sehen
var1 = "Hallo"
var2 = var1
# das hinzufügen von einem wert bleibt gleich
var1 << ", Welt!"
# hier zeigen sie beide das gleich weil das objekt sich verändert
puts var1, var2

# püfen ob diese verbindungen steht ist durch die id klär bar
# bei gleicher id zeigen sie auf das gleicher
puts var1.object_id, var2.object_id
# hier ist es dann anders
var1 = "Hallo"
var2 = "Hallo"
# jetzt verschieden
puts var1.object_id, var2.object_id

# Um Konstanten zu definieren
PI = 3.141592654
# kann nicht geändert werden
puts PI

# string in variabale
name = "Niklas"
puts "Hallo, #{name}"
# rechnung
puts "17 + 25 ergibt #{17+25}"
