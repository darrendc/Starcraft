Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  resources :players, only: [:new, :show, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :characters, only: [:new, :create]
  resources :factions, only: [:show] do
    resources :planets, only:[:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

