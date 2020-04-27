class Contact < MailForm::Base
  attribute :name
  attribute :contact_info,     :validate => true
  attribute :subject,   :validate => true
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => %("#{subject}"),
      :to => "al.tsu0526@gmail.com",
      :from => %(al.tsu0526@gmail.com)
    }
  end
end
