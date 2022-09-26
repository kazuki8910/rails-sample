Rails.application.routes.draw do
  # customers
  get '/' => 'customers#index'
  resources :customers

  # api
  get '/api' => 'apis#show'
  post '/api/create' => 'apis#create'

  # rails_admin(使い方分からない)
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
end
