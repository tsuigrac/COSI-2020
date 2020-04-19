class CommunityResourcesController < ApplicationController
  def new
    @community_resource = CommunityResource.new(params.require(:community_resource).permit(:category, :name, :link, :email, :phone, :address, :contact, :description))
  end
end
