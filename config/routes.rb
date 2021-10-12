Rails.application.routes.draw do
  resources :ledgers, only: [] do
    post 'buy', to: 'ledgers#buy', as: "buy"
    resources :orders, only: [:create, :destroy]
  end
  resources :users
  resources :tickers do
    member do
      post 'fetch_price'
    end
  end
end
