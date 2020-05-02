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
