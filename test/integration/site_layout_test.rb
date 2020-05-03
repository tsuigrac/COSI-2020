require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "root layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", home_path, count: 1
    assert_select "a[href=?]", resources_path, count: 3
    assert_select "a[href=?]", '/resources#Language'
    assert_select "a[href=?]", '/resources#Legal'
    assert_select "a[href=?]", '/resources#Community'
    assert_select "a[href=?]", '/resources#Education'
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", volunteer_path, count: 4
  end

  test "resources layout links" do
    get resources_path
    assert_template 'resources/resources'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", home_path, count: 1
    assert_select "a[href=?]", resources_path
    assert_select "a[href=?]", '#Language'
    assert_select "a[href=?]", '#Legal'
    assert_select "a[href=?]", '#Community'
    assert_select "a[href=?]", '#Education'
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", volunteer_path
  end

  test "contact layout links" do
    get contact_path
    assert_template 'contacts/new'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", home_path, count: 1
    assert_select "a[href=?]", resources_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", volunteer_path
  end

  test "volunteer layout links" do
    get volunteer_path
    assert_template 'static_pages/volunteer'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", home_path, count: 1
    assert_select "a[href=?]", resources_path
    assert_select "a[href=?]", contact_path, count: 3
    assert_select "a[href=?]", volunteer_path
  end
end
