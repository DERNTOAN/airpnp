Rails.application.routes.draw do
  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/update'

  get 'users/edit'

  get 'bookings/new'

  get 'bookings/create'

  get 'bathrooms/index'

  get 'bathrooms/show'

  get 'bathrooms/new'

  get 'bathrooms/update'

  get 'bathrooms/create'

  get 'bathrooms/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
