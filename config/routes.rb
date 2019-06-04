Rails.application.routes.draw do
  resources :outfits do
    resources :planned_outfits, only: [ :create ]
  	patch :validate, to: 'outfits#validate'
    patch :counter, to: 'outfits#counter'
  end
  resources :items

  resources :planned_outfits, only: [ :index, :destroy ]

  get "/csscomponents", to: 'pages#csscomponents'
  get "/menu", to: 'pages#menu'
  get "/validation", to: 'pages#validation'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
