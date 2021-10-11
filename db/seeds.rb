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
    ticker = Ticker.create(ticker: "BTCUSD", 
        description: "BTC/USD from Coinbase", 
        url:"https://api.coinbase.com/v2/prices/BTC-USD/buy",
        precision: 2
    )
    ticker.fetch_price!
    user.ledgers.create(ticker: ticker)
end
