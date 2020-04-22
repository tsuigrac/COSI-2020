require 'test_helper'

class CommunityResourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get community_resources_new_url
    assert_response :success
  end

end
