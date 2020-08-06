require 'test_helper'

class Admins::BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_blogs_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_blogs_show_url
    assert_response :success
  end

end
