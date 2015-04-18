Rails.application.routes.draw do
  
  root to: 'welcome#index'

  devise_for :users

  resources :wikis
  resources :users, only: [:update]
  resources :charges, only: [:new, :create]
  resources :collaborators, only: [:create, :destroy]

  get 'downgrade' => 'subscriptions#downgrade', :as => :downgrade_subscription
  match 'wikis/:wiki_id/collaborators/:id', to: 'collaborators#create', via: [:post], as: :add_collaborator
  match 'wikis/:wiki_id/collaborators/:id', to: 'collaborators#delete', via: [:delete], as: :remove_collaborator
end
