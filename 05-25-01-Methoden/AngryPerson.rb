class AngryPerson

    def shout(text, count)
        message = "#{text}, " * (count - 1) + "#{text}!!!"
        puts message.upcase
    end
end

peter = AngryPerson.new
peter.shout("No", 3)    # NO, NO, NO!!!