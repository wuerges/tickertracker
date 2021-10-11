require "test_helper"

class AssociationsTest < ActionDispatch::IntegrationTest

    test "check balance of orders" do
        user = User.create(login: "Jack Boggle")
        ticker = Ticker.create(ticker: "BTCUSD", 
            description: "BTC/USD from Coinbase", 
            url:"https://api.coinbase.com/v2/prices/BTC-USD/buy",
            precision: 2
        )
        ticker.fetch_price!
        btc_ledger = user.ledgers.create(ticker: ticker)
        btc_ledger.orders.create(amount: 1, price: 10)
        btc_ledger.orders.create(amount: 2, price: 5)
        btc_ledger.orders.create(amount: 3, price: 1)

        assert btc_ledger.balance == 6

    end


end