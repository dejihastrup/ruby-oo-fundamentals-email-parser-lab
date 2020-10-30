class EmailAddressParser
    
    attr_accessor :emails   

    def initialize(email)
        @emails = email
    end

    def parse
        parsed_emails = @emails.split(" ").uniq.collect do |email|
            if email.include? ","
                email.delete!(",")
            end
            email
        end
        parsed_emails.uniq
    end

end





