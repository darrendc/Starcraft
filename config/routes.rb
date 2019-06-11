Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  resources :players, only: [:new, :show, :create, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :characters, only: [:new, :create]
  resources :factions, only: [:show] do
    resources :planets, only:[:new, :create, :show]
  end
  post 'players/search', to: 'players#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

