require 'pry'

class Event
    
    attr_accessor :start_date, :duration, :title, :email
    @@all_email = Array.new
    @@event = Array.new

    def  initialize(date, duration, title, email)
        @date = date
        @duration = duration
        @title = title
        @email = email
        @@all_email << email
        @@event << self
    end

    def postpone_24h
        @date = @date + 24*60*60
    end

    

end
    
