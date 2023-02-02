Rails.application.routes.draw do
  get 'poetry/random'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'poetry/title/:title', to: 'poetry#title'
  get 'poetry/author/:author', to: 'poetry#author'
  get 'poetry/author/:author/title/:title', to: 'poetry#author_title'

  get 'poet/list/createnum', to: 'poet#list'
  # get 'poet/list/createnum', to 'poet#list'
  # get 'poet/list/createnum'
  # resource :poetry, only: [:show]
  # Defines the root path route ("/")
  # root "articles#index"
  # resources :poetry, only:[:show]
  root 'poetry#random'
end
