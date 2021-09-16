Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'as_leaders', to: 'users/registrations#new_as_leader'
    post 'as_leaders', to: 'users/registrations#create_as_leader'
    get 'as_members', to: 'users/registrations#new_as_member'
    post 'as_members', to: 'users/registrations#create_as_member'
  end
  root to: 'posts#index'
  resources :posts
  resources :users, only: [:index, :show]
  resources :rooms do
    resources :messages
  end
end