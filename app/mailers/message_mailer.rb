class MessageMailer < ApplicationMailer
    def new_message_email
        mail(to: 'al.tsu0526@gmail.com', subject: "Test 2", body: "text")
    end
end
