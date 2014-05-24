BeerForMe::Application.routes.draw do

  root :to => "home#index"

  namespace :waiter do
    resources :orders
  end

  namespace :chef do
    resources :orders, only: [:index, :update]
  end
  get 'dashboard/' => 'dashboard#index', as: 'dashboard'
end
