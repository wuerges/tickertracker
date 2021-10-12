require "test_helper"

class LedgersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ledgers_index_url
    assert_response :success
  end

  test "should get show" do
    get ledgers_show_url
    assert_response :success
  end
end
