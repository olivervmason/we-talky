Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Pages
  get "/", to: "pages#home", as: "root"

  # Profiles

  get "/profiles", to: "profiles#index", as: "profiles" 
  get "/profiles/new", to: "profiles#new", as: "new_profile"
  get "/profiles/:id", to: "profiles#show", as: "profile"
  post "/profiles", to: "profiles#create"
  delete "/profiles/:id", to: "profiles#destroy"

  get "/profiles/:id/edit", to: "profiles#edit", as: "edit_profile"
  patch "/profiles/:id", to: "profiles#update"

  # Exchanges
  # get "/exchanges", to: 

end
