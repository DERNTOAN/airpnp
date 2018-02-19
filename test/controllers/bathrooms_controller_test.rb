require 'test_helper'

class BathroomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bathrooms_index_url
    assert_response :success
  end

  test "should get show" do
    get bathrooms_show_url
    assert_response :success
  end

  test "should get new" do
    get bathrooms_new_url
    assert_response :success
  end

  test "should get update" do
    get bathrooms_update_url
    assert_response :success
  end

  test "should get create" do
    get bathrooms_create_url
    assert_response :success
  end

  test "should get destroy" do
    get bathrooms_destroy_url
    assert_response :success
  end

end
