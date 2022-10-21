# your code goes here

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness<0
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene<0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account = self.bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"  
    end

end