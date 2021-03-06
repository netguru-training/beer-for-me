BeerForMe::Application.routes.draw do

  root :to => "home#index"

  namespace :waiter do
    resources :orders, only: [:new, :create]
  end

  namespace :chef do
    resources :orders, only: [:index, :update]
  end

  namespace :dashboard do
    resources :orders, only: [:index, :update]
  end

  namespace :menu do
    resources :positions, :except => :show
  end

  get 'dashboard/' => 'dashboard/orders#index', as: 'dashboard'
  # get 'dashboard/mark_order_as_completed/:id' => 'dashboard#mark_order_as_completed', as: 'mark_order_as_completed'
end
