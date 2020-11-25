require 'test_helper'

class UserjourneysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get userjourneys_index_url
    assert_response :success
  end

  test "should get new" do
    get userjourneys_new_url
    assert_response :success
  end

  test "should get create" do
    get userjourneys_create_url
    assert_response :success
  end

  test "should get show" do
    get userjourneys_show_url
    assert_response :success
  end

  test "should get edit" do
    get userjourneys_edit_url
    assert_response :success
  end

  test "should get update" do
    get userjourneys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get userjourneys_destroy_url
    assert_response :success
  end

end
