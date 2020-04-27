class ResourcesController < ApplicationController
    
    def resources
        @resources = CommunityResource.order("category")
    end
    
    def sp_resources
    end
    
    def fr_resources
    end
end
