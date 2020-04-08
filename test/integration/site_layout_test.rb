require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "root layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", resources_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", volunteer_path
  end

  test "resources layout links" do
    get resources_path
    assert_template 'static_pages/resources'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", resources_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", volunteer_path
  end

  test "contact layout links" do
    get contact_path
    assert_template 'static_pages/contact'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", resources_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", volunteer_path
  end

  test "volunteer layout links" do
    get volunteer_path
    assert_template 'static_pages/volunteer'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", resources_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", volunteer_path
  end
end
