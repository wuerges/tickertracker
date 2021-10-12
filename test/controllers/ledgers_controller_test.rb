require "test_helper"

class LedgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @ticker = tickers(:one)
    @ledger = @user.ledgers.create(ticker: @ticker)
  end

  test "should post buy" do
    assert_difference("@ledger.orders.count", 1) do
      post ledger_buy_url(@ledger), params: { order: { amount: rand(20..100) } }
    end

    assert_redirected_to user_url(@ledger.user)
  end
end
