Rails.application.routes.draw do
  get 'sessions/new'
  resources :players, only: [:new, :index, :show, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :characters, only: [:new, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
