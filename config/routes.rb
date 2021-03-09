Rails.application.routes.draw do
  get 'search/search'
  devise_for :users
  resources :users, only: [:show,:create,:index,:edit,:update] do
  end
  resources :books, only: [:show,:create,:index,:edit,:update,:destroy] do
  end

  root 'homes#top'
  get 'home/about' => 'homes#about'
  get '/search', to: 'search#search'
end