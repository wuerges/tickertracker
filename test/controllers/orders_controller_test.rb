require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @ticker = tickers(:one)
    @ledger = @user.ledgers.create(ticker: @ticker)
    @order = orders(:one)
    @order.ledger = @ledger
    @order.save
  end

  test "should post create" do
    assert_difference("@ledger.orders.count", 1) do
      post ledger_orders_url(@ledger), params: { order: { amount: @order.amount, price: @order.price } }
    end

    assert_redirected_to user_url(@ledger.user)
  end

  test "should delete destroy" do
    assert_difference("@ledger.orders.count", -1) do
      delete ledger_order_url(@ledger, @order)
    end
    assert_redirected_to user_url(@ledger.user)
  end
end
