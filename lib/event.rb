require 'pry'
require 'time'

class Event
    
    attr_accessor :start_date, :duration, :title, :email
    

    def  initialize(date, duration, title, email)
        @date = Time.parse(date)
        @duration = duration.to_i
        @title = title.to_s
        @email = email.to_a
            
    end

    def postpone_24h
        @date = @date + 24*60*60
    end

    def end_date
    end_date = @date + @duration 
    end

    def is_past?
        Time.now > @date   
    end

    def is_future?
        Time.now < @date 
    end

    def is_soon?
    end

    def to_s
        puts "Titre : #{@title}"
        puts "Date de début : #{@date}"
        puts "Durée : #{@duration} minutes"
        puts "Invités : #{@email}"
    end


end

binding.pry
    
