require 'test_helper'

class Customers::ClientPlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_client_plans_index_url
    assert_response :success
  end

  test "should get show" do
    get customers_client_plans_show_url
    assert_response :success
  end

end
