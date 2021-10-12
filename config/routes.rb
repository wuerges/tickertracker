Rails.application.routes.draw do
  resources :ledgers, only: [] do
    resources :orders, only: [:create, :destroy]
  end
  resources :users
  resources :tickers do
    member do
      post 'fetch_price'
    end
  end
end
