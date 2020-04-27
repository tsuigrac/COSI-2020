class ContactsController < ApplicationController
    
    def new
        @contact = Contact.new
        @subjects = ["Volunteer", "Donate", "Information on Immigrant Rights", "Request a Presentation", "Other"]
    end
    
    def create
        @contact = Contact.new(params[:contact])
        @contact.request = request
        if @contact.deliver
            flash.now[:error] = nil
            redirect_to root_path, notice: 'Message sent successfully'
            else
            flash.now[:error] = 'Cannot send message'
            render :new
        end
    end
end
