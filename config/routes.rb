Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'

  get '/books', to: 'pages#books', as: :books

  get '/authors', to: 'pages#authors', as: :authors

  get '/show/:id', to: 'pages#show', as: :book

  get '/stores', to: 'pages#stores'

  post '/stores', to: 'pages#stores'

  get '/stores/:id', to: 'pages#show_store', as: :store



end
