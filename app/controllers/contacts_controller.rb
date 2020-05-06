=begin

#############################
##   ABOUT THIS DOCUMENT   ##
##   Updated May 6, 2020   ##
#############################

This file actually sends the email when the button is pressed. It also
keeps track of the possible subjects in the dropwon of the form.

=end


class ContactsController < ApplicationController
    
    def new
        @contact = Contact.new
        @subjects = ["Volunteer", "Donate", "Information on Immigrant Rights",
                     "Request a Presentation", "Other"]
    end
    
    def create
        @contact = Contact.new(params[:contact])
        @contact.request = request
        if @contact.deliver
            flash[:success] = "Message sent successfully!"
            redirect_to contact_path
        else
            flash.now[:error] = 'Cannot send message. Try again.'
            render :new
        end
    end
end
