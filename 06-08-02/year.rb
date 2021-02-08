# year.rb: This is the class of the year.
#
# Copyright (C) 2021 Niklas Abraham


class Year
    def initialize(year)
        @year_value = year
    end

    def leap?()
        # regln für die Schaltjahre
        # Ist die Jahreszahl durch vier teilbar, aber nicht durch 100, ist es ein Schaltjahr. 2008 fällt unter diese Regel.
        # Ist die Jahreszahl durch 100 teilbar, aber nicht durch 400, ist es kein Schaltjahr. 2100 wird kein Schaltjahr sein.
        # Ist die Jahreszahl durch 400 teilbar, dann ist es ein Schaltjahr. Deshalb war das Jahr 2000 ein Schaltjahr.
        @year_value%4==0 && (@year_value%100!=0 || @year_value%400==0)
    end

    def to_s
        @year_value.to_s
    end

end

year = Year.new(2001)
puts year
puts year.leap?