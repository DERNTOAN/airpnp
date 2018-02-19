Rails.application.routes.draw do

  resources :bathrooms, only: [:new, :create, :show, :index] do
    resources :bookings, only: [:new, :create, :show, :index]
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
