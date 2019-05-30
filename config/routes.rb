Rails.application.routes.draw do
  resources :outfits
  resources :items

  get "/csscomponents", to: 'pages#csscomponents'
  get "/menu", to: 'pages#menu'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
