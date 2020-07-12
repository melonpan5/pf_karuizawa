require 'test_helper'

class Customers::ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_clients_index_url
    assert_response :success
  end

  test "should get show" do
    get customers_clients_show_url
    assert_response :success
  end

end
