require "test_helper"

class Customers::InformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customers_informations_new_url
    assert_response :success
  end

  test "should get index" do
    get customers_informations_index_url
    assert_response :success
  end

  test "should get show" do
    get customers_informations_show_url
    assert_response :success
  end

  test "should get edit" do
    get customers_informations_edit_url
    assert_response :success
  end
end
