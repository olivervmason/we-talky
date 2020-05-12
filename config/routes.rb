Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Pages
  get "/", to: "pages#home", as: "root"

  # Profiles
 
  get "/profiles", to: "profiles#index" 
  get "/profiles/new", to: "profiles#new"
  # get "/profiles/:id", to: "profiles#show"
  post "/profiles", to: "profiles#create"

  # Exchanges
  # get "/exchanges", to: 

end
