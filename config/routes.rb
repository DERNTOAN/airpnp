Rails.application.routes.draw do
-  put 'location_update', to: 'users#update_location', as: 'location_update'

 resources :bathrooms, only: [:new, :create, :show, :index] do
    resources :bookings, only: [:new, :create, :show, :index]
    resources :reviews, only: [:new, :create, :show, :index]
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
