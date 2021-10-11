Rails.application.routes.draw do
  resources :tickers do
    member do
      post 'fetch_price'
    end
  end
  #post '/tickers/:id/fetch', to: 'tickers#fetch', as: 'ticker_fetch'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
