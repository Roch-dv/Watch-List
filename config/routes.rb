Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/lists', to: 'lists#index'
  # get '/lists/new', to: 'lists#new', as: :list_new
  # post '/lists', to: 'lists#create'
  # get '/lists/:id', to: 'lists#show', as: :list
  root to: 'lists#index'

  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
end
