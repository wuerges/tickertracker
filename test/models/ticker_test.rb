require "test_helper"

class TickerTest < ActiveSupport::TestCase

  test "checks set amount" do 
    ticker_fake = Ticker.new(:precision => 2)
    ticker_fake.set_amount!("123.12")
    assert ticker_fake.price == 12312
  end

  test "checks fetch ticker price" do
    ticker_fake = Ticker.new(:url => "https://api.coinbase.com/v2/prices/BTC-USD/buy", :precision => 2)
    assert ticker_fake.fetch_price!
  end
end
