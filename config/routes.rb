Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'as_leaders', to: 'users/registrations#new_as_leader'
    post 'as_leaders', to: 'users/registrations#create_as_leader'
  end
  root to: 'posts#index'
  resources :posts, only: [:index]
end