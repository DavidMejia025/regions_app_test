require 'test_helper'

class RegionControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get region_edit_url
    assert_response :success
  end

  test "should get create" do
    get region_create_url
    assert_response :success
  end

  test "should get new" do
    get region_new_url
    assert_response :success
  end

  test "should get update" do
    get region_update_url
    assert_response :success
  end

  test "should get destroy" do
    get region_destroy_url
    assert_response :success
  end

end
