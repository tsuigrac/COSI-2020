class CommunityResourcesController < ApplicationController
  def new
    @community_resource = CommunityResource.new(params.require(:community_resource).permit(:category, :name, :link, :email, :address, :contact, :description))
  end
end
