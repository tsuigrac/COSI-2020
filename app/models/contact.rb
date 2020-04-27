class Contact < MailForm::Base
  attribute :name
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Contact Form",
      :to => "al.tsu0526@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
