
class Film
  attr_accessor :bewertung

  def initialize(title)
    @title = title
    @bewertung = 0
  end
  
  def to_s
    if @bewertung == 1
      star="Stern"
    else
      star="Sterne"
    end
    "#{@title} (#{@bewertung} #{star})"
  end
  def erhoehen(zahl=1)
    @bewertung += zahl
  end
end

film = Film.new("Skyfall")
puts film.to_s
film.erhoehen
puts film.to_s
film.bewertung = 4
film.erhoehen(2)
puts film.to_s
