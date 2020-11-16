require 'test_helper'

class DemosControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get demos_dashboard_url
    assert_response :success
  end

  test "should get new" do
    get demos_new_url
    assert_response :success
  end

  test "should get create" do
    get demos_create_url
    assert_response :success
  end

  test "should get show" do
    get demos_show_url
    assert_response :success
  end

  test "should get edit" do
    get demos_edit_url
    assert_response :success
  end

  test "should get update" do
    get demos_update_url
    assert_response :success
  end

end
