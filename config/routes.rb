Rails.application.routes.draw do
  resources :services
  resources :identifies
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  root 'users#new'
  resources :users
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/saml/auth' => 'saml_idp#new'
  # get '/saml/metadata' => 'saml_idp#show'
  # post '/saml/auth' => 'saml_idp#create'
  # match '/saml/logout' => 'saml_idp#logout', via: [:get, :post, :delete]
  get '/saml/create_saml_request' => 'saml_idp#create_saml_request'
  get '/saml/auth' => 'saml_idp#new'
  get '/saml/metadata' => 'saml_idp#show'
  post '/saml/auth' => 'saml_idp#create'
  match '/saml/logout' => 'saml_idp#logout', via: [:get, :post, :delete]
end

