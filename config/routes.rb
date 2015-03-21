Rails.application.routes.draw do
  resources :wikis

  devise_for :users
  resources :users, only: [:update]
  root to: 'welcome#index'
  resources :charges, only: [:new, :create]
  get 'downgrade' => 'subscriptions#downgrade', :as => :downgrade_subscription
end
