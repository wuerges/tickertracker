Rails.application.routes.draw do
  # get 'orders/create'
  # get 'orders/destroy'
  # get 'ledgers/index'
  # get 'ledgers/show'
  resources :ledgers, only: [] do
    resources :orders, only: [:create, :destroy]
  end
  resources :users
  resources :tickers do
    member do
      post 'fetch_price'
    end
  end
  #post '/tickers/:id/fetch', to: 'tickers#fetch', as: 'ticker_fetch'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
