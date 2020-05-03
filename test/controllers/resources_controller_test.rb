require 'test_helper'

class ResourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get resources_url
    assert_response :success
  end
end
