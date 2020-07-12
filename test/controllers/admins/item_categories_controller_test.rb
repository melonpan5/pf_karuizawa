require 'test_helper'

class Admins::ItemCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_item_categories_index_url
    assert_response :success
  end

  test "should get edit" do
    get admins_item_categories_edit_url
    assert_response :success
  end

end
