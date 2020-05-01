class Contact < MailForm::Base
  attribute :name
  attribute :contact_info,     :validate => true
  attribute :subject,   :validate => true
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => %(#{subject}),
      :to => "cosicontactus@gmail.com",
      :from => %(cosicontactus@gmail.com)
    }
  end
end

