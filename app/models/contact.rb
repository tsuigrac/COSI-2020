=begin

#############################
##   ABOUT THIS DOCUMENT   ##
##   Updated May 6, 2020   ##
#############################

This file controls what the email sends and what information we are getting
from the contact form.

=end



class Contact < MailForm::Base

  #Section for what information you want the email to include.
  attribute :name
  attribute :contact_info,     :validate => true
  attribute :subject,   :validate => true
  attribute :message,   :validate => true
  
  #This attribute is to prevent spam: nickname should not be filled out in real form
  attribute :nickname,  :captcha  => true

  #This section controls where the emails are sent to/from and the subject.
  #Check the mailform github page or other tutorials to see how to change how the
  #email actually is formatted in HTML if you want to change it (you'll probably
  #have to make a new HTML file).
  def headers
    {
      :subject => %(#{subject}),
      :to => "cosicontactus@gmail.com",
      :from => %(cosicontactus@gmail.com)
    }
  end
end

