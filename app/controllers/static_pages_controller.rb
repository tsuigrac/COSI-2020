class StaticPagesController < ApplicationController
    
  def home
  end

  def resources
      @resources = CommunityResource.order("category")
  end
  
  def contact
  end
  
  def send_email
      message = MessageMailer.new_message_email
      message.deliver_now
      redirect_to root_path
  end

  def volunteer
  end

  def sp_home
  end

  def sp_resources
  end

  def sp_contact
  end

  def sp_volunteer
  end

  def fr_home
  end

  def fr_resources
  end

  def fr_contact
  end

  def fr_volunteer 
  end
end
