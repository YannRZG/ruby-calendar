require 'pry'

class User
    attr_accessor :email, :age
    @@all_users = Array.new

    def initialize(email_to_save, age_to_save)
        @email = email_to_save
        @age = age_to_save
        @@all_users << self # self = fais référence au éléments à du initialize
    end

    def self.all
        @@all_users
          
    end


end

    
