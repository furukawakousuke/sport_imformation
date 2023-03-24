require "test_helper"

class Customers::FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customers_favorites_index_url
    assert_response :success
  end
end
