require 'test_helper'

class Customers::OrderPlansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customers_order_plans_new_url
    assert_response :success
  end

  test "should get show" do
    get customers_order_plans_show_url
    assert_response :success
  end

end
