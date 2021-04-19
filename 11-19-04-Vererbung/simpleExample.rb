class Basisklasse
  def hallo
    puts "hallo !"
  end
end

class Unterklasse < Basisklasse
end

objekt = Unterklasse.new
objekt.hallo