# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

case Rails.env
when "development"
  user = User.create(login: "Jack Boggle")
  btc_ticker = Ticker.create(ticker: "BTCUSD",
                         description: "BTC/USD from Coinbase",
                         url: "https://api.coinbase.com/v2/prices/BTC-USD/buy",
                         precision: 2)
  btc_ticker.fetch_price!
  btc_ledger = user.ledgers.create(ticker: btc_ticker)
  btc_ledger.orders.create(amount: 1, price: 10)
  btc_ledger.orders.create(amount: 2, price: 5)
  btc_ledger.orders.create(amount: 3, price: 1)

  eth_ticker = Ticker.create(ticker: "ETHUSD",
                         description: "ETH/USD from Coinbase",
                         url: "https://api.coinbase.com/v2/prices/ETH-USD/buy",
                         precision: 2)
  eth_ticker.fetch_price!

  eth_ledger = user.ledgers.create(ticker: eth_ticker)
  eth_ledger.orders.create(amount: 1, price: 10)
  eth_ledger.orders.create(amount: 2, price: 5)
  eth_ledger.orders.create(amount: 3, price: 1)

end
