require 'test_helper'

class Admins::ClientPlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_client_plans_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_client_plans_show_url
    assert_response :success
  end

  test "should get new" do
    get admins_client_plans_new_url
    assert_response :success
  end

  test "should get edit" do
    get admins_client_plans_edit_url
    assert_response :success
  end

end
