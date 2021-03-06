Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/cocktails', to: 'cocktails#index'

  # get '/cocktails/:id', to: 'cocktails#show', as: :cocktail

  # get '/cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # post '/cocktails', to: 'cocktails#create'

  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
