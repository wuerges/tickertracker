json.extract! ticker, :id, :ticker, :description, :url, :created_at, :updated_at
json.url ticker_url(ticker, format: :json)
