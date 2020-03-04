require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "CoSI"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get resources" do
    get resources_path
    assert_response :success
    assert_select "title", "Resources/Services | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get sp-home" do
    get home_path
    assert_response :success
    assert_select "title", "sp-home | #{@base_title}"
  end

  test "should get sp-resources" do
    get resources_path
    assert_response :success
    assert_select "title", "sp-Resources/Services | #{@base_title}"
  end

  test "should get sp-contact" do
    get contact_path
    assert_response :success
    assert_select "title", "sp-Contact | #{@base_title}"
  end

  test "should get fr-home" do
    get home_path
    assert_response :success
    assert_select "title", "fr-Home | #{@base_title}"
  end

  test "should get fr-resources" do
    get resources_path
    assert_response :success
    assert_select "title", "fr-Resources/Services | #{@base_title}"
  end

  test "should get fr-contact" do
    get contact_path
    assert_response :success
    assert_select "title", "fr-Contact | #{@base_title}"
  end

end
